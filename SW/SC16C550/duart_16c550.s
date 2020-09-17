
; some useful macros
PNFLAG      =   10000000B   ; Negative flag
PVFLAG      =   01000000B   ; Overflow flag
PMFLAG      =   00100000B   ; Acc/Mem 8 bit flag
PXFLAG      =   00010000B   ; Index 8 bit flag
PDFLAG      =   00001000B   ; Decimal flag
PIFLAG      =   00000100B   ; IRQ disable flag
PZFLAG      =   00000010B   ; Zero flag
PCFLAG      =   00000001B   ; Carry flag

INDEX16:   .MACRO
   .MLIST
   rep   #PXFLAG
   .LONGI   on
   .MNLIST
.ENDM

INDEX08:   .MACRO
   .MLIST
   sep   #PXFLAG
   .LONGI   off
   .MNLIST
.ENDM

CPU08:      .MACRO
   .MLIST
   sep   #(PMFLAG.OR.PXFLAG)
   .LONGA   off
   .LONGI   off
   .MNLIST
.ENDM

ACC08:      .MACRO
   .MLIST
   sep   #PMFLAG
   .LONGA   off
   .MNLIST
.ENDM

ACC16:      .MACRO
   .MLIST
   rep   #PMFLAG
   .LONGA   on
   .MNLIST
.ENDM

SPOUTBUFF4   =   $05E000      ; TX buffer
SPINBUFF4   =   $05F000      ; RX buffer
SOBUFSIZ4   =   $1000      ; TX buffer size
SIBUFSIZ4   =   $1000      ; RX buffer size

NGUARD4      =   $0100      ; count of guard bytes for deassert CTS
NFREE4      =   $0400      ; min. count of free bytes in RX buffer for assert CTS

UARTDP      =   $0500      ; direct page

; uart 16C550 at $00FF20
UART_RXTX   =   $00FC20   ; DLAB=0
UART_IER   =   $00FC21   ; DLAB=0
UART_DLL   =   $00FC20   ; divisor latch low, DLAB=1
UART_DLH   =   $00FC21   ; divisor latch high, DLAB=1
UART_IIR   =   $00FC22   ; Int. Ident. Reg., read only
UART_FCR   =   $00FC22   ; FIFO Ctrl Reg., write only
UART_LCR   =   $00FC23   ; Line Ctrl Reg.
UART_MCR   =   $00FC24   ; Modem Ctrl Reg.
UART_LSR   =   $00FC25   ; Line Status Reg. (read only)
UART_MSR   =   $00FC26   ; Modem Status Reg. (read only)
UART_SCP   =   $00FC27   ; scratchpad reg.

; DIRECT PAGE variables's to handle 16C550
spmode4      .DB   ; <7>: 0=no handshake, 1=handshake
         ; <6>: 0=software/1=hardware handshake
         ; <5>: if = 1 FIFO is disabled
         ; <4>: not used
         ; <3>: 0=odd parity, 1=even parity
         ; <2>: 0=no parity, 1=parity as specified
         ;      by bit <3>
         ; <1:0> : baud rate
         ;   00 =  19200
         ;   01 =  38400
         ;   10 =  57600
         ;   11 = 115200

splin4      .DB   ; <7>: /DSR line level
         ; <6>: /CTS line level

sppause4   .DB   ; local/remote pause flag's
         ; <7>: remote pause (sent an XOFF or set RTS=1)
         ; <6>: local pause (received an XOFF or CTS=1)

spcnt4      .DB   ; count of bytes to send while tx interrupt

spstat4      .DB   ; status
         ; <7>: rx error (data discarded)
         ; <6>: rx buffer overrun
         ; <5>: remote disconnession (/DSR line = 1)
         ; <4>: output buffer overrun
         ; <3>: received a break
         ; <2>: framing error
         ; <1>: parity error
         ; <0>: overrun error

sptmp4      .DB   ; used for save X reg. while get/put routine and by ISR

uartlsr      .DB   ; save UART LSR reg. while ISR
uartiir      .DB   ; save UART IIR reg. while ISR

ibuftail4   .DW   ; pointer to tail of input buffer (get routine use it)
ibufhead4   .DW   ; pointer to head of input buffer (ISR routine use it)
obuftail4   .DW   ; pointer to tail of output buffer (ISR routine use it)
obufhead4   .DW   ; pointer to head of output buffer (put routine use it)
ibufcnt4   .DW   ; current count of bytes stored in input buffer
obufcnt4   .DW   ; current count of bytes stored in output buffer
icntmin4   .DW   ; min. count of bytes in rx buffer for clear remote pause
icntmax4   .DW   ; max. count of bytes in rx buffer for set remote pause

; CODE SECTION

; init serial port 16C550
; A=mode (like in spmode4)
; At this time just harware handshake is implemented
; WARNING: assume DBR = 0
spset4:
   sei         ; disable interrupt
   phd
   pea   #UARTDP
   pld
   sta   spmode4      ; save mode
   stz   !UART_LCR
   stz   !UART_IER   ; disable all UART interrupts
   stz   !UART_MCR   ; /RTS and /DTR high
   stz   !UART_FCR   ; disable FIFO
   ldx   .ABS.UART_RXTX   ; clear any pending interrupt
   ldx   .ABS.UART_LSR
   ldx   .ABS.UART_IIR
   ldx   #$80      ; set DLAB = 1 in LCR
   stx   .ABS.UART_LCR
   tay         ; save mode
   and   #00000011B   ; baud rate select
   tax
   lda   >?div,x      ; select divisor
   sta   !UART_DLL   ; set low latch
   stz   !UART_DLH   ; set high latch
   tya         ; mode
   and   #00001100B   ; mask on bits 3 & 2 (parity mode)
   asl   a      ; shift <3:2> to <4:3>
   ora   #00000011B   ; 8N1 (8 bits data, 1 stop bit)
   sta   !UART_LCR
   lda   !UART_MSR   ; get /DSR & /CTS status
   tax
   asl   a
   asl   a      ; <7>: /DSR, <6>: /CTS
   and   #11000000B
   eor   #11000000B
   sta   splin4      ; update line status
   stz   sppause4   ; init work area
   stz   spstat4
   lda   #1      ; set tx count = 1
   sta   spcnt4
   CPU16         ; init buffer's pointer's
   lda   #NGUARD4
   ldy   #NFREE4
   sta   icntmax4
   sty   icntmin4
   sec
   lda   #SIBUFSIZ4
   sbc   icntmax4
   sta   icntmax4
   stz   ibuftail4
   stz   ibufhead4
   stz   ibufcnt4
   stz   obuftail4
   stz   obufhead4
   stz   obufcnt4
   CPU08
   lda   #00000011B   ; set /RTS = /DTR low
   sta   !UART_MCR
   lda   #$20
   bit   spmode4
   bne   ?nof      ; no fifo
   lda   #10000111B   ; enable fifo, reset rx/tx fifo, trigger level = 8
   sta   !UART_FCR   ; rx fifo trigger = 8
   lda   #16      ; set tx count = 16 in FIFO mode
   sta   spcnt4
?nof:   lda   !UART_LSR   ; again reset all interrupts
   lda   !UART_MSR
   lda   !UART_IIR
   lda   #00001111B   ; enable all interrupts
   sta   !UART_IER
   pld
   cli
   rts

;       19.200, 38.400, 57.600, 115.200
?div:   .DB   6,    3,    2,    1

; ISR routine (prologue and epilogue code for context switching not showed here)
; handle 16C550 interrupt
; WARNING: assume DBR = 0 and DP saved by interrupt handler prologue code
uartisr:
   pea   #UARTDP
   pld
   lda   !UART_IIR
   sta   uartiir      ; save for late check FIFO enabled
   lsr   a      ; if bit <0> = 1 no interrupt
   bcc   $+3      ; interrupt pending
   rts
   and   #0000011B   ; mask on priority code
   asl   a
   tax
   ; RX timeout interrupt and RX data available interrupt use the same routine
   jmp   (?uarttbl,x)   ; jump to right routine

?uarttbl:
   .DW   ?msr, ?tx, ?rx, ?lsr

?lsr:   jsr   uartlsr
   rts
   ;bra   uartisr      ; check again interrupt (was a test)

?msr:   jsr   uartmsr      ; MSR: modem status register
   rts
   ;bra   uartisr      ; check again iterrupt

?tx:   jsr   uarttx      ; TX FIFO or THR is empty
   rts
   ;bra   uartisr      ; check again interrupt

?rx:   jsr   uartrx      ; data available in RX FIFO or RHR
   rts
   ;bra   uartisr      ; check again interrupt

; this interrupt is raised when one of the modem lines change state
; here just DSR and CTS are used: DSR for signaling remote disconnession,
; CTS for hardware handshake (put local TX in pause)
uartmsr:
   lda   !UART_MSR   ; clear interrupt
   tax
   asl   a
   asl   a      ; <7>: /DSR, <6>: /CTS
   eor   #$C0
   sta   splin4      ; update line status
   bit   spmode4
   bpl   ?end      ; no handshake: ignore line changes
   tay
   bpl   ?cts      ; /DSR is low, check /CTS
   lda   #$A0      ; /DSR is high
   tsb   spstat4      ; remote terminal disconnected
?cts:   txa
   lsr   a      ; check /CTS transition
   bcc   ?end      ; no /CTS transition
   ldx   #$40      ; local pause flag
   tya
   asl   a
   bpl   ?clp      ; transition /CTS high->low: clear local pause
   txa
   tsb   sppause4   ; /CTS high -> set local pause
   lda   #00000010B   ; disable TX interrupt
   trb   !UART_IER
   rts
?clp:   txa
   trb   sppause4   ; /CTS low -> clear local pause
   lda   #00000010B   ; enable TX interrupt
   tsb   !UART_IER
?end:   rts

; this interrupt is raised either when THR is empty
; or when TX FIFO is empty
uarttx:
   lda   #00000010B   ; disable TX interrupt
   trb   !UART_IER
   bit   sppause4   ; local pause is set ?
   bvs   ?done      ; yes, no tx possible at this time
   INDEX16
   ldy   obufcnt4   ; count of bytes in output buffer
   beq   ?done      ; nothing to send at this time
   ldx   obuftail4   ; pointer to tail of out buffer
   lda   spcnt4      ; set the bytes count
   sta   sptmp4
?txl:   lda   >SOBUFADDR4,x   ; get data from the tail of output buffer
   sta   !UART_RXTX   ; load data into FIFO/THR
   inx         ; update head pointer
   ACC16
   txa
   and   #(SOBUFSIZ4-1)   ; circular queue
   tax
   ACC08
   dey         ; update count
   beq   ?upd      ; nothing else to send
   dec   sptmp4
   bne   ?txl      ; loop: load more bytes if FIFO enabled
?upd:   stx   obuftail4
   sty   obufcnt4
?done:   CPU08         ; NOTE: tx interrupt will be re-enabled by put routine
   rts         ; or by a negative /CTS transition

; this interrupt is raised when receive a byte with some errors
uartlsr:
   lda   #00000101B   ; disable LSR & RX interrupt
   trb   UART_IER
   lda   !UART_LSR   ; get line status and clear interrupt
   sta   uartlsr      ; save for further debugging
   lsr   a      ; CF = 1 if available a new rx byte
   and   #$0F      ; mask on rx errors
   ora   #$80      ; set rx error bit
   sta   spstat4      ; set status register
   bcc   ?done      ; no new char received
   lda   !UART_RXTX   ; get top fifo data or THR & discard
   bit   uartiir
   bvc   ?done      ; no FIFO enabled
   lda   #10000011B   ; clear RX FIFO
   sta   !UART_FCR
?done:   rts         ; after rx error, rx interrupt are disabled

; this interrupt is raised either when RHR is full or when RX FIFO reach the
; programmed trigger level (in this case 8)
uartrx:
   lda   #$01      ; disable RX interrupt
   trb   UART_IER
   INDEX16
   ldy   ibufcnt4   ; count of bytes in input buffer
   ldx   ibufhead4   ; pointer to head of input buffer
?loop:   lda   !UART_LSR   ; get line status
   sta   uartlsr
   lsr   a      ; CF = 1 if available a new rx byte
   and   #$0F      ; mask on rx errors
   bcc   ?done1      ; no data available, re-enable rx int. & exit
   xba         ; save error code
   lda   !UART_RXTX   ; get top fifo data or THR
   xba
?tst:   beq   ?rx      ; no rx error pending
   ora   #$80      ; set rx error bit
   bra   ?sst      ; set status reg. & discard received data
?rx:   xba         ; A = received data
   cpy   icntmax4   ; check input buff. for remote pause condition
   bcc   ?str      ; below guard limit: store data
   xba         ; B = received data
   lda   #00000010B   ; hardware handshake...
   trb   !UART_MCR   ; ...set RTS=1
   lda   #$80      ; set remote pause flag
   tsb   sppause4   ; bit 7=1 -> remote pause on
   xba         ; A = received data
?chk:   cpy   #SIBUFSIZ4   ; left room in input buffer?
   bcc   ?str      ; yes, store received byte
   lda   #$C0      ; set bit 7: rx error, bit 6: rx overrun
?sst:   sta   spstat4      ; set status register
   bra   ?done      ; discard received data & exit
?str:   sta   >SIBUFADDR4,x   ; now store received data
   iny         ; update bytes count
   inx         ; update rx head pointer
   ACC16
   txa
   and   #(SIBUFSIZ4-1)   ; circular queue
   tax
   ACC08
   bra   ?loop      ; check again if rx data available
?done:   stx   ibufhead4   ; save rx head pointer
   sty   ibufcnt4   ; save bytes count
?done1:   INDEX08
   lda   #$01      ; re-enable rx interrupt
   tsb   UART_IER
   rts

; get a byte from input buffer and return in A
; return:
;   CF = 0, A = byte from queue
;   CF = 1, A = 0 if no new byte available
;   CF = 1, A > 0 if rx error (A = error code)
spget4:
   sei         ; disable interrupt
   phd
   pea   #UARTDP
   pld
   sec         ; assume error
   stx   sptmp4      ; save X reg.
   lda   spstat4      ; rx pending error?
   bmi   ?done      ; yes, exit (CF = 1, A = error code)
   lda   #0      ; assume no data available
   tay         ; Y = 0
   INDEX16
   ldx   ibufcnt4   ; available new data?
   beq   ?done      ; input queue is empty (exit with CF=1, A=0)
   dex         ; update count
   stx   ibufcnt4
   ldx   ibuftail4   ; tail input buffer pointer
   lda   >SIBUFADDR4,x   ; get byte from queue
   inx         ; update tail pointer
   cpx   #SIBUFSIZ4
   bcc   ?upd
   tyx         ; circular queue
?upd:   stx   ibuftail4
   bit   spmode4      ; handshake is on?
   bpl   ?ok      ; no, exit
   bit   sppause4   ; remote pause is on?
   bpl   ?ok      ; no, exit
   ldx   ibufcnt4
   cpx   icntmin4   ; can clear remote pause?
   bcs   ?ok      ; no, exit
   xba         ; save data
   lda   #00000010B   ; hardware handshake...
   tsb   !UART_MCR   ; ...set /RTS=0
   lda   #$80
   trb   sppause4   ; clear remote pause flag
   lda   #00000010B   ; set IER<1>
   tsb   !UART_IER   ; re-enable tx interrupt
   xba         ; recover data
?ok:   clc         ; no error
?done:   CPU08
   ldx   sptmp4      ; restore X reg.
   pld
   cli
   rts         ; CF=1 & A=0 mean: no data available

; put a byte in the output buffer
spput4:
   sei         ; disable interrupt
   phd
   pea   #UARTDP
   pld
   stx   sptmp4      ; save X reg.
   ldy   #0      ; Y = 0
   INDEX16
   ldx   obufcnt4
   cpx   #SOBUFSIZ4   ; output buffer is full?
   bcc   ?str      ; no, store byte
   bit   splin4      ; test /DSR line status
   bmi   ?ofl      ; remote terminal disconnected
   xba         ; save A
   lda   #00000010B   ; enable TX interrupt...
   tsb   !UART_IER   ; ... hoping that ISR can make room in output buffer
   xba
   bra   ?done      ; exit with CF=1, Y=0: output buffer is full
?ofl:   dey         ; /DSR high
   xba
   lda   #00000010B
   trb   !UART_IER   ; disable tx interrupt
   xba
   bra   ?done      ; exit with CF=1, Y=$FF: remote terminal offline
?str:   inx         ; update count
   stx   obufcnt4
   ldx   obufhead4   ; output buffer head pointer
   sta   >SOBUFADDR4,x   ; store byte in output buffer
   inx         ; update head pointer
   cpx   #SOBUFSIZ4
   bcc   ?upd
   tyx         ; circular queue
?upd:   stx   obufhead4
   xba
   lda   #00000010B
   tsb   !UART_IER   ; re-enable tx interrupt
   xba         ; return A = sent data
   clc         ; no error
?done:   INDEX08
   ldx   sptmp4      ; restore X reg.
   pld
   cli
   rts

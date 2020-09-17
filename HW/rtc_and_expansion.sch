EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L jupiter-rescue:DS1511Y+-Grotto U3
U 1 1 5D100309
P 5250 5600
F 0 "U3" H 5425 6350 60  0000 C CNN
F 1 "DS1511Y+" V 5275 5550 60  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_Socket" H 5000 6050 60  0001 C CNN
F 3 "" H 5000 6050 60  0001 C CNN
	1    5250 5600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J2
U 1 1 5D101C65
P 6050 3000
F 0 "J2" H 6200 4025 50  0000 C CNN
F 1 "Expansion Bus" H 6125 1425 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x20_P2.54mm_Vertical" H 6050 3000 50  0001 C CNN
F 3 "~" H 6050 3000 50  0001 C CNN
	1    6050 3000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR013
U 1 1 5D104029
P 6100 1925
F 0 "#PWR013" H 6100 1775 50  0001 C CNN
F 1 "VCC" H 6117 2098 50  0000 C CNN
F 2 "" H 6100 1925 50  0001 C CNN
F 3 "" H 6100 1925 50  0001 C CNN
	1    6100 1925
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5D104306
P 6100 4175
F 0 "#PWR014" H 6100 3925 50  0001 C CNN
F 1 "GND" H 6105 4002 50  0000 C CNN
F 2 "" H 6100 4175 50  0001 C CNN
F 3 "" H 6100 4175 50  0001 C CNN
	1    6100 4175
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 4000 5850 4175
Wire Wire Line
	5850 4175 6100 4175
Wire Wire Line
	6100 4175 6350 4175
Wire Wire Line
	6350 4175 6350 4000
Connection ~ 6100 4175
Wire Wire Line
	5850 2100 5850 1925
Wire Wire Line
	5850 1925 6100 1925
Wire Wire Line
	6100 1925 6350 1925
Wire Wire Line
	6350 1925 6350 2100
Connection ~ 6100 1925
Wire Wire Line
	6350 2200 6650 2200
Wire Wire Line
	6350 2300 6650 2300
Wire Wire Line
	6350 2400 6650 2400
Wire Wire Line
	6350 2500 6650 2500
Wire Wire Line
	6350 2600 6650 2600
Wire Wire Line
	6350 2700 6650 2700
Wire Wire Line
	6350 2800 6650 2800
Wire Wire Line
	6350 2900 6650 2900
Wire Wire Line
	6350 3000 6650 3000
Wire Wire Line
	6350 3100 6650 3100
Wire Wire Line
	6350 3200 6650 3200
Wire Wire Line
	6350 3300 6650 3300
Wire Wire Line
	6350 3400 6650 3400
Wire Wire Line
	6350 3500 6650 3500
Wire Wire Line
	6350 3600 6650 3600
Wire Wire Line
	6350 3700 6650 3700
Wire Wire Line
	6350 3800 6650 3800
Wire Wire Line
	6350 3900 6650 3900
Wire Wire Line
	5850 2200 5550 2200
Wire Wire Line
	5850 2300 5550 2300
Wire Wire Line
	5850 2400 5550 2400
Wire Wire Line
	5850 2500 5550 2500
Wire Wire Line
	5850 2600 5550 2600
Wire Wire Line
	5850 2700 5550 2700
Wire Wire Line
	5850 2800 5550 2800
Wire Wire Line
	5850 2900 5550 2900
Wire Wire Line
	5850 3000 5550 3000
Wire Wire Line
	5850 3100 5550 3100
Wire Wire Line
	5850 3200 5550 3200
Wire Wire Line
	5850 3300 5550 3300
Wire Wire Line
	5850 3400 5550 3400
Wire Wire Line
	5850 3500 5550 3500
Wire Wire Line
	5850 3600 5550 3600
Wire Wire Line
	5850 3700 5550 3700
Wire Wire Line
	5850 3800 5550 3800
Wire Wire Line
	5850 3900 5550 3900
Text Label 6650 2200 2    50   ~ 0
A0
Text Label 6650 2300 2    50   ~ 0
A1
Text Label 6650 2400 2    50   ~ 0
A2
Text Label 6650 2500 2    50   ~ 0
A3
Text Label 6650 2600 2    50   ~ 0
A4
Text Label 6650 2700 2    50   ~ 0
A5
Text Label 6650 2800 2    50   ~ 0
A6
Text Label 6650 2900 2    50   ~ 0
A7
Text Label 6650 3000 2    50   ~ 0
A8
Text Label 6650 3100 2    50   ~ 0
A9
Text Label 6650 3200 2    50   ~ 0
A10
Text Label 6650 3300 2    50   ~ 0
A11
Text Label 6650 3400 2    50   ~ 0
A12
Text Label 6650 3500 2    50   ~ 0
A13
Text Label 6650 3600 2    50   ~ 0
A14
Text Label 6650 3700 2    50   ~ 0
A15
Text Label 5550 2200 0    50   ~ 0
D0
Text Label 5550 2300 0    50   ~ 0
D1
Text Label 5550 2400 0    50   ~ 0
D2
Text Label 5550 2500 0    50   ~ 0
D3
Text Label 5550 2600 0    50   ~ 0
D4
Text Label 5550 2700 0    50   ~ 0
D5
Text Label 5550 2800 0    50   ~ 0
D6
Text Label 5550 2900 0    50   ~ 0
D7
Wire Wire Line
	3300 3250 3600 3250
Wire Wire Line
	3300 3350 3600 3350
Wire Wire Line
	2200 2200 1900 2200
Wire Wire Line
	2200 2300 1900 2300
Wire Wire Line
	2200 2400 1900 2400
Wire Wire Line
	2200 2500 1900 2500
Wire Wire Line
	2200 2600 1900 2600
Wire Wire Line
	2200 2800 1900 2800
Wire Wire Line
	2200 2900 1900 2900
Wire Wire Line
	2200 3000 1900 3000
Wire Wire Line
	2200 3250 1900 3250
Wire Wire Line
	2200 3350 1900 3350
Text Label 3550 2200 2    50   ~ 0
D0
Text Label 3550 2300 2    50   ~ 0
D1
Text Label 3550 2400 2    50   ~ 0
D2
Text Label 3550 2500 2    50   ~ 0
D3
Text Label 3550 2600 2    50   ~ 0
D4
Text Label 3550 2700 2    50   ~ 0
D5
Text Label 3550 2800 2    50   ~ 0
D6
Text Label 3550 2900 2    50   ~ 0
D7
Text Label 1900 2200 0    50   ~ 0
A0
Text Label 1900 2300 0    50   ~ 0
A1
Text Label 1900 2400 0    50   ~ 0
A2
Text Label 1900 2500 0    50   ~ 0
A3
Text Label 1900 2600 0    50   ~ 0
A4
Entry Wire Line
	3550 2200 3650 2100
Entry Wire Line
	3550 2300 3650 2200
Entry Wire Line
	3550 2400 3650 2300
Entry Wire Line
	3550 2500 3650 2400
Entry Wire Line
	3550 2600 3650 2500
Entry Wire Line
	3550 2700 3650 2600
Entry Wire Line
	3550 2800 3650 2700
Entry Wire Line
	3550 2900 3650 2800
Entry Wire Line
	5550 2200 5450 2100
Entry Wire Line
	5450 2200 5550 2300
Entry Wire Line
	5450 2300 5550 2400
Entry Wire Line
	5450 2400 5550 2500
Entry Wire Line
	5450 2500 5550 2600
Entry Wire Line
	5450 2600 5550 2700
Entry Wire Line
	5450 2700 5550 2800
Entry Wire Line
	5450 2800 5550 2900
Entry Wire Line
	6650 2200 6750 2100
Entry Wire Line
	6650 2300 6750 2200
Entry Wire Line
	6650 2400 6750 2300
Entry Wire Line
	6650 2500 6750 2400
Entry Wire Line
	6650 2600 6750 2500
Entry Wire Line
	6650 2700 6750 2600
Entry Wire Line
	6650 2800 6750 2700
Entry Wire Line
	6650 2900 6750 2800
Entry Wire Line
	6650 3000 6750 2900
Entry Wire Line
	6650 3100 6750 3000
Entry Wire Line
	6650 3200 6750 3100
Entry Wire Line
	6650 3300 6750 3200
Entry Wire Line
	6650 3400 6750 3300
Entry Wire Line
	6650 3500 6750 3400
Entry Wire Line
	6650 3600 6750 3500
Entry Wire Line
	6650 3700 6750 3600
Text Label 3650 2100 0    50   ~ 0
D[0..7]
Text HLabel 5450 1925 1    50   BiDi ~ 0
D[0..7]
Wire Bus Line
	6750 2100 7300 2100
Text Label 6750 2100 0    50   ~ 0
A[0..18]
Text HLabel 7300 2100 2    50   Output ~ 0
A[0..18]
Entry Wire Line
	1800 2100 1900 2200
Entry Wire Line
	1800 2200 1900 2300
Entry Wire Line
	1800 2300 1900 2400
Entry Wire Line
	1800 2400 1900 2500
Entry Wire Line
	1800 2500 1900 2600
Wire Bus Line
	1800 2100 1400 2100
Text Label 1800 2100 2    50   ~ 0
A[0..18]
Text HLabel 1400 2100 0    50   Output ~ 0
A[0..18]
$Comp
L Device:C_Small C5
U 1 1 5D14A5F3
P 3050 1750
F 0 "C5" V 2925 1750 50  0000 C CNN
F 1 "0.1uF" V 3175 1750 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 3050 1750 50  0001 C CNN
F 3 "~" H 3050 1750 50  0001 C CNN
	1    3050 1750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5D14AF4F
P 2750 4375
F 0 "#PWR011" H 2750 4125 50  0001 C CNN
F 1 "GND" H 2755 4202 50  0000 C CNN
F 2 "" H 2750 4375 50  0001 C CNN
F 3 "" H 2750 4375 50  0001 C CNN
	1    2750 4375
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR012
U 1 1 5D14B363
P 2750 1600
F 0 "#PWR012" H 2750 1450 50  0001 C CNN
F 1 "VCC" H 2767 1773 50  0000 C CNN
F 2 "" H 2750 1600 50  0001 C CNN
F 3 "" H 2750 1600 50  0001 C CNN
	1    2750 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1750 2950 1750
Wire Wire Line
	3150 1750 3975 1750
Wire Bus Line
	3650 2100 5450 2100
Wire Bus Line
	5450 2100 5450 1925
Connection ~ 5450 2100
Text HLabel 1900 3250 0    50   Output ~ 0
~IRQ
Text HLabel 1900 3350 0    50   Output ~ 0
~RES
Text HLabel 3600 3250 2    50   Output ~ 0
~PWR
Text HLabel 3600 3350 2    50   Input ~ 0
~KS
Text HLabel 1450 3050 0    50   Input ~ 0
~MWR
Text HLabel 1475 2925 0    50   Input ~ 0
~MRD
Text HLabel 1525 2800 0    50   Input ~ 0
~RTCSEL
NoConn ~ 5550 3000
NoConn ~ 5550 3100
NoConn ~ 5550 3200
NoConn ~ 5550 3300
NoConn ~ 5550 3400
NoConn ~ 5550 3500
NoConn ~ 5550 3600
NoConn ~ 5550 3700
NoConn ~ 5550 3800
NoConn ~ 5550 3900
NoConn ~ 6650 3800
NoConn ~ 6650 3900
NoConn ~ 1900 2800
NoConn ~ 1900 2900
NoConn ~ 1900 3000
Wire Wire Line
	3300 2200 3550 2200
Wire Wire Line
	3300 2300 3550 2300
Wire Wire Line
	3300 2400 3550 2400
Wire Wire Line
	3300 2500 3550 2500
Wire Wire Line
	3300 2600 3550 2600
Wire Wire Line
	3300 2700 3550 2700
Wire Wire Line
	3300 2800 3550 2800
Wire Wire Line
	3300 2900 3550 2900
Wire Wire Line
	3975 1750 3975 3450
Wire Wire Line
	3300 3450 3975 3450
Wire Wire Line
	2750 1600 2750 1750
Wire Wire Line
	2750 1750 2750 1850
Connection ~ 2750 1750
$Comp
L jupiter-rescue:DS1501W-Grotto U5
U 1 1 5DA42BF4
P 2750 2750
F 0 "U5" H 2475 3500 60  0000 C CNN
F 1 "DS1501W" V 2750 2200 60  0000 C CNN
F 2 "" H 2450 3200 60  0001 C CNN
F 3 "" H 2450 3200 60  0001 C CNN
	1    2750 2750
	1    0    0    -1  
$EndComp
Connection ~ 3975 3450
Wire Wire Line
	2650 4200 2650 4300
Wire Wire Line
	2650 4300 2750 4300
Wire Wire Line
	2850 4300 2850 4200
Wire Wire Line
	2750 4300 2750 4375
Connection ~ 2750 4300
Wire Wire Line
	2750 4300 2850 4300
Wire Wire Line
	3975 4300 2850 4300
Wire Wire Line
	3975 3450 3975 4300
Connection ~ 2850 4300
Wire Bus Line
	1800 2100 1800 2500
Wire Bus Line
	3650 2100 3650 2800
Wire Bus Line
	5450 2100 5450 2800
Wire Bus Line
	6750 2100 6750 3600
$EndSCHEMATC

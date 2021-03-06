EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Grotto:ST16C550PLCC44 U?
U 1 1 60289116
P 5375 2850
F 0 "U?" H 5225 3850 60  0000 C CNN
F 1 "ST16C550PLCC44" V 5450 2875 60  0000 C CNN
F 2 "" H 5475 2850 60  0001 C CNN
F 3 "" H 5475 2850 60  0001 C CNN
	1    5375 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3825 4850 3925
Wire Wire Line
	6050 2000 6350 2000
Wire Wire Line
	6050 2100 6350 2100
Wire Wire Line
	6050 2200 6350 2200
Wire Wire Line
	6050 2300 6350 2300
Wire Wire Line
	6050 2400 6350 2400
Wire Wire Line
	6050 2500 6350 2500
Wire Wire Line
	6050 2600 6350 2600
Wire Wire Line
	6050 2700 6350 2700
Text Label 6350 2000 2    50   ~ 0
D0
Text Label 6350 2100 2    50   ~ 0
D1
Text Label 6350 2200 2    50   ~ 0
D2
Text Label 6350 2300 2    50   ~ 0
D3
Text Label 6350 2400 2    50   ~ 0
D4
Text Label 6350 2500 2    50   ~ 0
D5
Text Label 6350 2600 2    50   ~ 0
D6
Text Label 6350 2700 2    50   ~ 0
D7
Entry Wire Line
	6350 2000 6450 2100
Entry Wire Line
	6350 2100 6450 2200
Entry Wire Line
	6350 2200 6450 2300
Entry Wire Line
	6350 2300 6450 2400
Entry Wire Line
	6350 2400 6450 2500
Entry Wire Line
	6350 2500 6450 2600
Entry Wire Line
	6350 2600 6450 2700
Entry Wire Line
	6350 2700 6450 2800
Wire Bus Line
	6450 2800 6975 2800
Text Label 6750 2800 2    50   ~ 0
D[0..7]
Wire Wire Line
	6050 3700 6350 3700
Wire Wire Line
	6050 3800 6350 3800
Wire Wire Line
	6050 3600 6350 3600
Wire Wire Line
	6050 3425 6350 3425
Wire Wire Line
	6050 3925 6150 3925
Wire Wire Line
	6050 4125 6150 4125
Wire Wire Line
	6150 4125 6150 3925
$Comp
L power:GND #PWR?
U 1 1 60292DD0
P 6350 3425
F 0 "#PWR?" H 6350 3175 50  0001 C CNN
F 1 "GND" V 6355 3297 50  0000 R CNN
F 2 "" H 6350 3425 50  0001 C CNN
F 3 "" H 6350 3425 50  0001 C CNN
	1    6350 3425
	0    -1   -1   0   
$EndComp
$Comp
L Oscillator:SG-8002CE X?
U 1 1 6029E988
P 6375 5225
F 0 "X?" H 6325 5475 50  0000 R CNN
F 1 "3.6864MHz" H 6350 4975 50  0000 R CNN
F 2 "Oscillator:Oscillator_SMD_SeikoEpson_SG8002CE-4Pin_3.2x2.5mm" H 7075 4875 50  0001 C CNN
F 3 "https://support.epson.biz/td/api/doc_check.php?mode=dl&lang=en&Parts=SG-8002DC" H 6275 5225 50  0001 C CNN
	1    6375 5225
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 602A2426
P 5975 5225
F 0 "#PWR?" H 5975 4975 50  0001 C CNN
F 1 "GND" H 5980 5052 50  0000 C CNN
F 2 "" H 5975 5225 50  0001 C CNN
F 3 "" H 5975 5225 50  0001 C CNN
	1    5975 5225
	0    1    1    0   
$EndComp
$Comp
L dk_D-Sub-Connectors:5747840-3 J?
U 1 1 602A8CBF
P 1175 1925
F 0 "J?" H 1175 2452 60  0000 C CNN
F 1 "5747840-3" H 1175 2346 60  0000 C CNN
F 2 "digikey-footprints:DSUB-9_Jack_5747840-3" H 1375 2125 60  0001 L CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=5747840&DocType=Customer+Drawing&DocLang=English" H 1375 2225 60  0001 L CNN
F 4 "A32091-ND" H 1375 2325 60  0001 L CNN "Digi-Key_PN"
F 5 "5747840-3" H 1375 2425 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 1375 2525 60  0001 L CNN "Category"
F 7 "D-Sub Connectors" H 1375 2625 60  0001 L CNN "Family"
F 8 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=5747840&DocType=Customer+Drawing&DocLang=English" H 1375 2725 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/te-connectivity-amp-connectors/5747840-3/A32091-ND/808646" H 1375 2825 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN D-SUB PLUG 9POS R/A SOLDER" H 1375 2925 60  0001 L CNN "Description"
F 11 "TE Connectivity AMP Connectors" H 1375 3025 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1375 3125 60  0001 L CNN "Status"
	1    1175 1925
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3050 6350 3050
Wire Wire Line
	6050 3175 6350 3175
Wire Wire Line
	6050 3300 6350 3300
Entry Wire Line
	6350 3050 6450 2950
Entry Wire Line
	6350 3175 6450 3075
Entry Wire Line
	6350 3300 6450 3200
Wire Bus Line
	6450 2950 6975 2950
Text Label 6775 2950 2    50   ~ 0
A[0..18]
Text HLabel 6975 2800 2    50   BiDi ~ 0
D[0..7]
Text HLabel 6975 2950 2    50   Input ~ 0
A[0..18]
$Comp
L Interface_UART:MAX232 U?
U 1 1 602A786D
P 3325 1950
F 0 "U?" H 3250 3000 50  0000 C CNN
F 1 "MAX232" V 3325 2200 50  0000 C CNN
F 2 "" H 3375 900 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/max232.pdf" H 3325 2050 50  0001 C CNN
	1    3325 1950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4850 2150 4450 2150
Wire Wire Line
	4450 2150 4450 2050
Wire Wire Line
	4450 2050 4125 2050
Wire Wire Line
	4125 2450 4550 2450
Wire Wire Line
	4550 2450 4550 2050
Wire Wire Line
	4550 2050 4850 2050
Wire Wire Line
	4850 2350 4450 2350
Wire Wire Line
	4450 2350 4450 2250
Wire Wire Line
	4450 2250 4125 2250
Wire Wire Line
	4850 2250 4625 2250
Wire Wire Line
	4625 2250 4625 2650
Wire Wire Line
	4625 2650 4125 2650
Wire Wire Line
	1475 1825 1975 1825
Wire Wire Line
	1975 1825 1975 2450
Wire Wire Line
	1975 2450 2525 2450
Wire Wire Line
	2525 2050 1750 2050
Wire Wire Line
	1750 2050 1750 1925
Wire Wire Line
	1750 1925 1475 1925
Wire Wire Line
	2525 2250 2150 2250
Wire Wire Line
	2150 2250 2150 1575
Wire Wire Line
	2150 1575 750  1575
Wire Wire Line
	750  1575 750  1825
Wire Wire Line
	750  1825 875  1825
Wire Wire Line
	875  2025 750  2025
Wire Wire Line
	750  2025 750  2650
Wire Wire Line
	750  2650 2525 2650
$Comp
L power:GND #PWR?
U 1 1 603906B4
P 1475 2125
F 0 "#PWR?" H 1475 1875 50  0001 C CNN
F 1 "GND" H 1480 1952 50  0000 C CNN
F 2 "" H 1475 2125 50  0001 C CNN
F 3 "" H 1475 2125 50  0001 C CNN
	1    1475 2125
	1    0    0    -1  
$EndComp
NoConn ~ 1175 2425
NoConn ~ 1475 2025
NoConn ~ 1475 1725
NoConn ~ 875  1725
NoConn ~ 875  2125
Wire Wire Line
	6350 3600 6350 3700
NoConn ~ 4850 4125
NoConn ~ 4850 3025
NoConn ~ 4850 3125
NoConn ~ 4850 3725
NoConn ~ 4850 2550
NoConn ~ 4850 2650
NoConn ~ 4850 2750
NoConn ~ 6050 4850
$Comp
L power:GND #PWR?
U 1 1 603AEF44
P 6150 3925
F 0 "#PWR?" H 6150 3675 50  0001 C CNN
F 1 "GND" V 6155 3797 50  0000 R CNN
F 2 "" H 6150 3925 50  0001 C CNN
F 3 "" H 6150 3925 50  0001 C CNN
	1    6150 3925
	0    -1   -1   0   
$EndComp
Connection ~ 6150 3925
NoConn ~ 4850 4325
NoConn ~ 4850 4425
$Comp
L power:GND #PWR?
U 1 1 603BBCDB
P 5475 5150
F 0 "#PWR?" H 5475 4900 50  0001 C CNN
F 1 "GND" H 5480 4977 50  0000 C CNN
F 2 "" H 5475 5150 50  0001 C CNN
F 3 "" H 5475 5150 50  0001 C CNN
	1    5475 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5475 1700 5975 1700
$Comp
L Device:C_Small C?
U 1 1 603BF3AA
P 6075 1700
F 0 "C?" V 6025 1600 50  0000 C CNN
F 1 "100nF" V 6025 1925 50  0000 C CNN
F 2 "" H 6075 1700 50  0001 C CNN
F 3 "~" H 6075 1700 50  0001 C CNN
	1    6075 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	6175 1700 6400 1700
$Comp
L power:GND #PWR?
U 1 1 603C0E82
P 6400 1700
F 0 "#PWR?" H 6400 1450 50  0001 C CNN
F 1 "GND" V 6405 1572 50  0000 R CNN
F 2 "" H 6400 1700 50  0001 C CNN
F 3 "" H 6400 1700 50  0001 C CNN
	1    6400 1700
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP_Small C?
U 1 1 603C67CB
P 2325 1200
F 0 "C?" H 2413 1246 50  0000 L CNN
F 1 "1uF" H 2413 1155 50  0000 L CNN
F 2 "" H 2325 1200 50  0001 C CNN
F 3 "~" H 2325 1200 50  0001 C CNN
	1    2325 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C?
U 1 1 603C6AE3
P 3900 750
F 0 "C?" V 4125 750 50  0000 C CNN
F 1 "1uF" V 4034 750 50  0000 C CNN
F 2 "" H 3900 750 50  0001 C CNN
F 3 "~" H 3900 750 50  0001 C CNN
	1    3900 750 
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP_Small C?
U 1 1 603C6EBE
P 4250 1200
F 0 "C?" H 4338 1246 50  0000 L CNN
F 1 "1uF" H 4338 1155 50  0000 L CNN
F 2 "" H 4250 1200 50  0001 C CNN
F 3 "~" H 4250 1200 50  0001 C CNN
	1    4250 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C?
U 1 1 603C71EE
P 2725 750
F 0 "C?" V 2950 750 50  0000 C CNN
F 1 "1uF" V 2859 750 50  0000 C CNN
F 2 "" H 2725 750 50  0001 C CNN
F 3 "~" H 2725 750 50  0001 C CNN
	1    2725 750 
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP_Small C?
U 1 1 603C7504
P 2525 1750
F 0 "C?" H 2375 1775 50  0000 L CNN
F 1 "1uF" H 2375 1675 50  0000 L CNN
F 2 "" H 2525 1750 50  0001 C CNN
F 3 "~" H 2525 1750 50  0001 C CNN
	1    2525 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2525 1050 2325 1050
Wire Wire Line
	2325 1050 2325 1100
Wire Wire Line
	2525 1350 2325 1350
Wire Wire Line
	2325 1350 2325 1300
Wire Wire Line
	4125 1050 4250 1050
Wire Wire Line
	4250 1050 4250 1100
Wire Wire Line
	4125 1350 4250 1350
Wire Wire Line
	4250 1350 4250 1300
Wire Wire Line
	3325 750  3325 575 
$Comp
L power:GND #PWR?
U 1 1 603E531F
P 4175 750
F 0 "#PWR?" H 4175 500 50  0001 C CNN
F 1 "GND" V 4180 622 50  0000 R CNN
F 2 "" H 4175 750 50  0001 C CNN
F 3 "" H 4175 750 50  0001 C CNN
	1    4175 750 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3800 750  3325 750 
Connection ~ 3325 750 
Wire Wire Line
	4000 750  4175 750 
Wire Wire Line
	2825 750  3325 750 
Wire Wire Line
	2625 750  2200 750 
Wire Wire Line
	2200 750  2200 1550
Wire Wire Line
	2200 1550 2525 1550
Wire Wire Line
	2525 1650 2400 1650
$Comp
L power:GND #PWR?
U 1 1 6042E206
P 2400 1650
F 0 "#PWR?" H 2400 1400 50  0001 C CNN
F 1 "GND" V 2475 1575 50  0000 R CNN
F 2 "" H 2400 1650 50  0001 C CNN
F 3 "" H 2400 1650 50  0001 C CNN
	1    2400 1650
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS03 U?
U 1 1 60EDBC6D
P 6975 4525
F 0 "U?" H 6975 4300 50  0000 C CNN
F 1 "74LS03" H 6975 4225 50  0000 C CNN
F 2 "" H 6975 4525 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS03" H 6975 4525 50  0001 C CNN
	1    6975 4525
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74LS03 U?
U 2 1 60EDCE67
P 7550 4200
F 0 "U?" H 7550 4525 50  0000 C CNN
F 1 "74LS03" H 7550 4434 50  0000 C CNN
F 2 "" H 7550 4200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS03" H 7550 4200 50  0001 C CNN
	2    7550 4200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS03 U?
U 3 1 60EDE66A
P 8525 5225
F 0 "U?" H 8525 5550 50  0000 C CNN
F 1 "74LS03" H 8525 5459 50  0000 C CNN
F 2 "" H 8525 5225 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS03" H 8525 5225 50  0001 C CNN
	3    8525 5225
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS03 U?
U 4 1 60EDEF5A
P 8525 5750
F 0 "U?" H 8525 6075 50  0000 C CNN
F 1 "74LS03" H 8525 5984 50  0000 C CNN
F 2 "" H 8525 5750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS03" H 8525 5750 50  0001 C CNN
	4    8525 5750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS03 U?
U 5 1 60EDFE7D
P 7350 5950
F 0 "U?" V 6983 5950 50  0000 C CNN
F 1 "74LS03" V 7074 5950 50  0000 C CNN
F 2 "" H 7350 5950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS03" H 7350 5950 50  0001 C CNN
	5    7350 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 4425 6675 4425
Wire Wire Line
	7250 4325 7250 4300
Wire Wire Line
	6050 4325 7250 4325
Connection ~ 7250 4300
Wire Wire Line
	7250 4300 7250 4100
Wire Wire Line
	7850 4200 7925 4200
$Comp
L Device:R_Small R?
U 1 1 60F3B450
P 7925 3950
F 0 "R?" H 7984 3996 50  0000 L CNN
F 1 "3.3k" H 7984 3905 50  0000 L CNN
F 2 "" H 7925 3950 50  0001 C CNN
F 3 "~" H 7925 3950 50  0001 C CNN
	1    7925 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7925 3700 7925 3850
Wire Wire Line
	7925 4050 7925 4200
Connection ~ 7925 4200
$Comp
L Device:C_Small C?
U 1 1 60F7881B
P 7375 6250
F 0 "C?" V 7325 6150 50  0000 C CNN
F 1 "100nF" V 7325 6475 50  0000 C CNN
F 2 "" H 7375 6250 50  0001 C CNN
F 3 "~" H 7375 6250 50  0001 C CNN
	1    7375 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 5950 7850 6250
Wire Wire Line
	7850 6250 7475 6250
Wire Wire Line
	7275 6250 6850 6250
Wire Wire Line
	6850 6250 6850 5950
$Comp
L power:GND #PWR?
U 1 1 60F82B31
P 8225 6000
F 0 "#PWR?" H 8225 5750 50  0001 C CNN
F 1 "GND" H 8230 5827 50  0000 C CNN
F 2 "" H 8225 6000 50  0001 C CNN
F 3 "" H 8225 6000 50  0001 C CNN
	1    8225 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8225 5125 8225 5325
Connection ~ 8225 5325
Wire Wire Line
	8225 5325 8225 5650
Connection ~ 8225 5650
Wire Wire Line
	8225 5650 8225 5850
Connection ~ 8225 5850
Wire Wire Line
	8225 5850 8225 6000
NoConn ~ 8825 5225
NoConn ~ 8825 5750
Wire Wire Line
	5975 5225 6075 5225
$Comp
L power:GND #PWR?
U 1 1 60FC4ADB
P 6850 5950
F 0 "#PWR?" H 6850 5700 50  0001 C CNN
F 1 "GND" H 6855 5777 50  0000 C CNN
F 2 "" H 6850 5950 50  0001 C CNN
F 3 "" H 6850 5950 50  0001 C CNN
	1    6850 5950
	0    1    1    0   
$EndComp
Connection ~ 6850 5950
Wire Wire Line
	6775 5225 6675 5225
Wire Wire Line
	6375 5525 6675 5525
Wire Wire Line
	6675 5525 6675 5225
Connection ~ 6675 5225
Wire Wire Line
	6375 4925 6375 4725
Wire Wire Line
	6375 4725 6050 4725
$Comp
L Connector_Generic:Conn_02x30_Odd_Even J?
U 1 1 6116A92C
P 9925 2725
F 0 "J?" H 9975 4342 50  0000 C CNN
F 1 "Slot 5" H 9975 4251 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x30_P2.54mm_Vertical" H 9925 2725 50  0001 C CNN
F 3 "~" H 9925 2725 50  0001 C CNN
	1    9925 2725
	1    0    0    -1  
$EndComp
Wire Wire Line
	9725 1325 9425 1325
Wire Wire Line
	9725 1525 9425 1525
Wire Wire Line
	9725 1625 9425 1625
Wire Wire Line
	9725 1725 9425 1725
Wire Wire Line
	9725 1825 9425 1825
Wire Wire Line
	9725 1925 9425 1925
Wire Wire Line
	9725 2025 9425 2025
Wire Wire Line
	9725 2125 9425 2125
Wire Wire Line
	9725 2225 9425 2225
Wire Wire Line
	9725 2325 9425 2325
Wire Wire Line
	9725 2425 9425 2425
Wire Wire Line
	9725 2525 9425 2525
Wire Wire Line
	9725 2625 9425 2625
Wire Wire Line
	9725 2725 9425 2725
Wire Wire Line
	9725 2825 9425 2825
Wire Wire Line
	9725 2925 9425 2925
Wire Wire Line
	9725 3025 9425 3025
Wire Wire Line
	9425 1425 9725 1425
Text Label 9425 1325 0    50   ~ 0
A0
Text Label 9425 1425 0    50   ~ 0
A1
Text Label 9425 1525 0    50   ~ 0
A2
Text Label 9425 1625 0    50   ~ 0
A3
Text Label 9425 1725 0    50   ~ 0
A4
Text Label 9425 1825 0    50   ~ 0
A5
Text Label 9425 1925 0    50   ~ 0
A6
Text Label 9425 2025 0    50   ~ 0
A7
Text Label 9425 2125 0    50   ~ 0
A8
Text Label 9425 2225 0    50   ~ 0
A9
Text Label 9425 2325 0    50   ~ 0
A10
Text Label 9425 2425 0    50   ~ 0
A11
Text Label 9425 2525 0    50   ~ 0
A12
Text Label 9425 2625 0    50   ~ 0
A13
Text Label 9425 2725 0    50   ~ 0
A14
Text Label 9425 2825 0    50   ~ 0
A15
Text Label 9425 2925 0    50   ~ 0
A16
Text Label 9425 3025 0    50   ~ 0
A17
$Comp
L power:GND #PWR?
U 1 1 6116A956
P 9425 3225
F 0 "#PWR?" H 9425 2975 50  0001 C CNN
F 1 "GND" V 9430 3097 50  0000 R CNN
F 2 "" H 9425 3225 50  0001 C CNN
F 3 "" H 9425 3225 50  0001 C CNN
	1    9425 3225
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6116A95C
P 9425 3125
AR Path="/611564FC/6116A95C" Ref="#PWR?"  Part="1" 
AR Path="/6116A95C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9425 2975 50  0001 C CNN
F 1 "+5V" V 9440 3253 50  0000 L CNN
F 2 "" H 9425 3125 50  0001 C CNN
F 3 "" H 9425 3125 50  0001 C CNN
	1    9425 3125
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9725 3125 9425 3125
Wire Wire Line
	9725 3225 9425 3225
Wire Wire Line
	9725 3325 9425 3325
Wire Wire Line
	9725 3625 9425 3625
Wire Wire Line
	9725 3725 9425 3725
Wire Wire Line
	9725 3825 9425 3825
Wire Wire Line
	9725 3925 9425 3925
Wire Wire Line
	9725 4025 9425 4025
Wire Wire Line
	9725 4125 9425 4125
Wire Wire Line
	9725 4225 9425 4225
$Comp
L power:+3.3V #PWR?
U 1 1 6116A96E
P 9425 3325
F 0 "#PWR?" H 9425 3175 50  0001 C CNN
F 1 "+3.3V" V 9440 3453 50  0000 L CNN
F 2 "" H 9425 3325 50  0001 C CNN
F 3 "" H 9425 3325 50  0001 C CNN
	1    9425 3325
	0    -1   -1   0   
$EndComp
Text Label 9425 3425 0    50   ~ 0
~MRD
Text Label 9425 3525 0    50   ~ 0
~MRW
Text Label 9425 3625 0    50   ~ 0
~IOSEL1
Text Label 9425 3725 0    50   ~ 0
~IOSEL2
Text Label 9425 3825 0    50   ~ 0
~IOSEL3
Text Label 9425 3925 0    50   ~ 0
SCLK
Text Label 9425 4025 0    50   ~ 0
MOSI
Text Label 9425 4125 0    50   ~ 0
MISO
Wire Wire Line
	10225 1425 10525 1425
Wire Wire Line
	10225 1525 10525 1525
Wire Wire Line
	10225 1625 10525 1625
Wire Wire Line
	10225 1725 10525 1725
Wire Wire Line
	10225 1825 10525 1825
Wire Wire Line
	10225 1925 10525 1925
Wire Wire Line
	10225 2025 10525 2025
Wire Wire Line
	10225 2125 10525 2125
Wire Wire Line
	10225 2325 10525 2325
Wire Wire Line
	10225 2425 10525 2425
Wire Wire Line
	10225 2525 10525 2525
Wire Wire Line
	10225 2625 10525 2625
Wire Wire Line
	10225 2725 10525 2725
Wire Wire Line
	10225 2825 10525 2825
Wire Wire Line
	10225 2925 10525 2925
Wire Wire Line
	10225 3125 10525 3125
Wire Wire Line
	10225 3225 10525 3225
Wire Wire Line
	10225 3325 10525 3325
Wire Wire Line
	10225 3425 10525 3425
Wire Wire Line
	10225 3525 10525 3525
Wire Wire Line
	10225 3625 10525 3625
Wire Wire Line
	10225 3725 10525 3725
Wire Wire Line
	10225 3825 10525 3825
Wire Wire Line
	10225 3925 10525 3925
Wire Wire Line
	10225 4025 10525 4025
Wire Wire Line
	10225 4125 10525 4125
Wire Wire Line
	10225 4225 10525 4225
$Comp
L power:GND #PWR?
U 1 1 6116A999
P 10525 3225
F 0 "#PWR?" H 10525 2975 50  0001 C CNN
F 1 "GND" V 10530 3097 50  0000 R CNN
F 2 "" H 10525 3225 50  0001 C CNN
F 3 "" H 10525 3225 50  0001 C CNN
	1    10525 3225
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6116A99F
P 10525 3325
F 0 "#PWR?" H 10525 3175 50  0001 C CNN
F 1 "+3.3V" V 10540 3453 50  0000 L CNN
F 2 "" H 10525 3325 50  0001 C CNN
F 3 "" H 10525 3325 50  0001 C CNN
	1    10525 3325
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6116A9A5
P 10525 3125
F 0 "#PWR?" H 10525 2975 50  0001 C CNN
F 1 "+5V" V 10540 3253 50  0000 L CNN
F 2 "" H 10525 3125 50  0001 C CNN
F 3 "" H 10525 3125 50  0001 C CNN
	1    10525 3125
	0    1    1    0   
$EndComp
Text Label 10525 2925 2    50   ~ 0
VPA
Text Label 10525 3025 2    50   ~ 0
~RES
Text Label 10525 2725 2    50   ~ 0
PHI2
Text Label 10525 3625 2    50   ~ 0
R~W
Text Label 10525 3725 2    50   ~ 0
SS0
Text Label 10525 3825 2    50   ~ 0
SS1
Text Label 10525 3925 2    50   ~ 0
SS2
Text Label 10525 4025 2    50   ~ 0
SS3
Text Label 10525 4125 2    50   ~ 0
SS4
NoConn ~ 10525 2325
NoConn ~ 10525 2525
Text Label 10525 3425 2    50   ~ 0
~IOSEL4
Text Label 10525 3525 2    50   ~ 0
~IOSEL5
Wire Wire Line
	10225 1325 10525 1325
Text Label 10525 1325 2    50   ~ 0
D0
Text Label 10525 1425 2    50   ~ 0
D1
Text Label 10525 1525 2    50   ~ 0
D2
Text Label 10525 1625 2    50   ~ 0
D3
Text Label 10525 1725 2    50   ~ 0
D4
Text Label 10525 1825 2    50   ~ 0
D5
Text Label 10525 1925 2    50   ~ 0
D6
Text Label 10525 2025 2    50   ~ 0
D7
Text Label 10525 2125 2    50   ~ 0
RDY
Text Label 10525 2225 2    50   ~ 0
~IRQ
Text Label 10525 2425 2    50   ~ 0
~NMI
Text Label 10525 2625 2    50   ~ 0
VDA
Text Label 9425 4225 0    50   ~ 0
SS6
Text Label 10525 4225 2    50   ~ 0
SS5
Wire Wire Line
	6675 4425 6675 4525
Wire Wire Line
	7275 4425 7275 4525
Wire Wire Line
	7275 4525 10925 4525
Connection ~ 7275 4525
Wire Wire Line
	7275 4525 7275 4625
Wire Wire Line
	10225 3025 10925 3025
Wire Wire Line
	9300 4200 9300 4425
Wire Wire Line
	9300 4425 10875 4425
Wire Wire Line
	10875 4425 10875 2225
Wire Wire Line
	7925 4200 9300 4200
Wire Wire Line
	10225 2225 10875 2225
Wire Wire Line
	10925 4525 10925 3025
$Comp
L power:+5V #PWR?
U 1 1 611E0119
P 3325 575
AR Path="/611564FC/611E0119" Ref="#PWR?"  Part="1" 
AR Path="/611E0119" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3325 425 50  0001 C CNN
F 1 "+5V" V 3340 703 50  0000 L CNN
F 2 "" H 3325 575 50  0001 C CNN
F 3 "" H 3325 575 50  0001 C CNN
	1    3325 575 
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 611E360C
P 5475 1700
AR Path="/611564FC/611E360C" Ref="#PWR?"  Part="1" 
AR Path="/611E360C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5475 1550 50  0001 C CNN
F 1 "+5V" V 5490 1828 50  0000 L CNN
F 2 "" H 5475 1700 50  0001 C CNN
F 3 "" H 5475 1700 50  0001 C CNN
	1    5475 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 611E40D5
P 6775 5225
AR Path="/611564FC/611E40D5" Ref="#PWR?"  Part="1" 
AR Path="/611E40D5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6775 5075 50  0001 C CNN
F 1 "+5V" V 6790 5353 50  0000 L CNN
F 2 "" H 6775 5225 50  0001 C CNN
F 3 "" H 6775 5225 50  0001 C CNN
	1    6775 5225
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 611E4F65
P 7850 5950
AR Path="/611564FC/611E4F65" Ref="#PWR?"  Part="1" 
AR Path="/611E4F65" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7850 5800 50  0001 C CNN
F 1 "+5V" V 7865 6078 50  0000 L CNN
F 2 "" H 7850 5950 50  0001 C CNN
F 3 "" H 7850 5950 50  0001 C CNN
	1    7850 5950
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 611E58A7
P 7925 3700
AR Path="/611564FC/611E58A7" Ref="#PWR?"  Part="1" 
AR Path="/611E58A7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7925 3550 50  0001 C CNN
F 1 "+5V" V 7940 3828 50  0000 L CNN
F 2 "" H 7925 3700 50  0001 C CNN
F 3 "" H 7925 3700 50  0001 C CNN
	1    7925 3700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 611E63B8
P 6350 3700
AR Path="/611564FC/611E63B8" Ref="#PWR?"  Part="1" 
AR Path="/611E63B8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6350 3550 50  0001 C CNN
F 1 "+5V" V 6365 3828 50  0000 L CNN
F 2 "" H 6350 3700 50  0001 C CNN
F 3 "" H 6350 3700 50  0001 C CNN
	1    6350 3700
	0    1    1    0   
$EndComp
Connection ~ 6350 3700
Connection ~ 7850 5950
Wire Wire Line
	9300 4025 9300 3525
Wire Wire Line
	9300 3525 9725 3525
Wire Wire Line
	6050 4025 9300 4025
Wire Wire Line
	6800 4225 6800 3775
Wire Wire Line
	6800 3775 9200 3775
Wire Wire Line
	9200 3775 9200 3425
Wire Wire Line
	6050 4225 6800 4225
Wire Wire Line
	9200 3425 9725 3425
Wire Bus Line
	6450 2950 6450 3200
Wire Bus Line
	6450 2100 6450 2800
Connection ~ 5475 1700
$EndSCHEMATC

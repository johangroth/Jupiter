EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
L jupiter-rescue:SC16C2550BIB48-Grotto U7
U 1 1 5DAD13B3
P 6425 1975
F 0 "U7" H 6050 2625 60  0000 C CNN
F 1 "SC16C2550BIB48" V 6425 950 60  0000 C CNN
F 2 "" H 6425 1575 60  0001 C CNN
F 3 "" H 6425 1575 60  0001 C CNN
	1    6425 1975
	1    0    0    -1  
$EndComp
$Comp
L jupiter-rescue:MAX238-Grotto U6
U 1 1 5DAD7090
P 3050 2900
F 0 "U6" H 3025 4681 50  0000 C CNN
F 1 "MAX238" H 3025 4590 50  0000 C CNN
F 2 "" H 3100 1850 50  0001 L CNN
F 3 "" H 3050 3100 50  0001 C CNN
	1    3050 2900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5775 1625 4750 1625
Wire Wire Line
	4750 1625 4750 2475
Wire Wire Line
	4750 2475 3850 2475
Wire Wire Line
	5775 2925 4750 2925
Wire Wire Line
	4750 2925 4750 2650
Wire Wire Line
	4750 2650 3850 2650
Wire Wire Line
	5775 1825 4925 1825
Wire Wire Line
	4925 1825 4925 2825
Wire Wire Line
	4925 2825 3850 2825
Wire Wire Line
	5775 3125 4750 3125
Wire Wire Line
	4750 3125 4750 3000
Wire Wire Line
	4750 3000 3850 3000
Wire Wire Line
	5775 1525 4125 1525
Wire Wire Line
	4125 1525 4125 3200
Wire Wire Line
	4125 3200 3850 3200
Wire Wire Line
	5775 2825 5075 2825
Wire Wire Line
	5075 2825 5075 3375
Wire Wire Line
	5075 3375 3850 3375
Wire Wire Line
	5775 1725 5200 1725
Wire Wire Line
	5200 1725 5200 3550
Wire Wire Line
	5200 3550 3850 3550
Wire Wire Line
	5775 3025 5325 3025
Wire Wire Line
	5325 3025 5325 3725
Wire Wire Line
	5325 3725 3850 3725
NoConn ~ 5775 1925
NoConn ~ 5775 2025
NoConn ~ 5775 2125
NoConn ~ 5775 2325
NoConn ~ 5775 3225
NoConn ~ 5775 3325
NoConn ~ 5775 3425
NoConn ~ 5775 3625
Wire Wire Line
	7025 1525 7325 1525
Wire Wire Line
	7025 1625 7325 1625
Wire Wire Line
	7025 1725 7325 1725
Wire Wire Line
	7025 1825 7325 1825
Wire Wire Line
	7025 1925 7325 1925
Wire Wire Line
	7025 2025 7325 2025
Wire Wire Line
	7025 2125 7325 2125
Wire Wire Line
	7025 2225 7325 2225
Text Label 7325 1525 2    50   ~ 0
D0
Text Label 7325 1625 2    50   ~ 0
D1
Text Label 7325 1725 2    50   ~ 0
D2
Text Label 7325 1825 2    50   ~ 0
D3
Text Label 7325 1925 2    50   ~ 0
D4
Text Label 7325 2025 2    50   ~ 0
D5
Text Label 7325 2125 2    50   ~ 0
D6
Text Label 7325 2225 2    50   ~ 0
D7
Entry Wire Line
	7325 1525 7425 1425
Entry Wire Line
	7325 1625 7425 1525
Entry Wire Line
	7325 1725 7425 1625
Entry Wire Line
	7325 1825 7425 1725
Entry Wire Line
	7325 1925 7425 1825
Entry Wire Line
	7325 2025 7425 1925
Entry Wire Line
	7325 2125 7425 2025
Entry Wire Line
	7325 2225 7425 2125
Wire Bus Line
	7425 1325 8100 1325
Text Label 8100 1325 2    50   ~ 0
D[0..7]
Text HLabel 8100 1325 2    50   BiDi ~ 0
D[0..7]
Wire Bus Line
	7425 1325 7425 2125
$EndSCHEMATC

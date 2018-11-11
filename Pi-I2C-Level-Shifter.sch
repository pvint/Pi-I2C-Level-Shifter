EESchema Schematic File Version 4
LIBS:Pi-I2C-Level-Shifter-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Thermocouple I2C Sensor"
Date "2018-10-10"
Rev "A"
Comp "Paul Vint"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 3600 2950 2    50   Input ~ 0
SDAa
Text GLabel 3900 3050 2    50   Input ~ 0
SCLa
$Comp
L Connector_Generic:Conn_01x05 J1
U 1 1 5BC0CED6
P 3050 3050
F 0 "J1" H 3130 3092 50  0000 L CNN
F 1 "Conn_01x05" H 3130 3001 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Horizontal" H 3050 3050 50  0001 C CNN
F 3 "~" H 3050 3050 50  0001 C CNN
	1    3050 3050
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5BC15F6C
P 3550 2500
F 0 "R1" H 3620 2546 50  0000 L CNN
F 1 "10k" H 3620 2455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3480 2500 50  0001 C CNN
F 3 "~" H 3550 2500 50  0001 C CNN
	1    3550 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2300 3550 2350
$Comp
L Device:R R2
U 1 1 5BC16F9A
P 3850 2500
F 0 "R2" H 3920 2546 50  0000 L CNN
F 1 "10k" H 3920 2455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3780 2500 50  0001 C CNN
F 3 "~" H 3850 2500 50  0001 C CNN
	1    3850 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2950 3550 2950
Wire Wire Line
	3550 2650 3550 2950
Connection ~ 3550 2950
Wire Wire Line
	3550 2950 3600 2950
Wire Wire Line
	3250 3050 3850 3050
Wire Wire Line
	3850 2650 3850 3050
Connection ~ 3850 3050
Wire Wire Line
	3850 3050 3900 3050
Wire Wire Line
	3250 2850 3400 2850
Connection ~ 3550 2300
Wire Wire Line
	3400 2850 3400 2300
Wire Wire Line
	3400 2300 3550 2300
$Comp
L power:Earth #PWR01
U 1 1 5BC2CB90
P 3400 3350
F 0 "#PWR01" H 3400 3100 50  0001 C CNN
F 1 "Earth" H 3400 3200 50  0001 C CNN
F 2 "" H 3400 3350 50  0001 C CNN
F 3 "~" H 3400 3350 50  0001 C CNN
	1    3400 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3250 3400 3250
Wire Wire Line
	3400 3250 3400 3350
Text GLabel 3450 3150 2    50   Input ~ 0
OE
Text Notes 2950 2700 0    50   ~ 0
INPUT
$Comp
L Connector_Generic:Conn_01x05 J4
U 1 1 5BC4960F
P 8000 3250
F 0 "J4" H 8080 3292 50  0000 L CNN
F 1 "Conn_01x05" H 8080 3201 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Horizontal" H 8000 3250 50  0001 C CNN
F 3 "~" H 8000 3250 50  0001 C CNN
	1    8000 3250
	1    0    0    1   
$EndComp
Wire Wire Line
	7800 3050 7650 3050
Wire Wire Line
	7650 3050 7650 3000
Text GLabel 7700 3250 0    50   Input ~ 0
SCLb
Text GLabel 7700 3150 0    50   Input ~ 0
SDAb
$Comp
L power:Earth #PWR08
U 1 1 5BC49620
P 7700 3500
F 0 "#PWR08" H 7700 3250 50  0001 C CNN
F 1 "Earth" H 7700 3350 50  0001 C CNN
F 2 "" H 7700 3500 50  0001 C CNN
F 3 "~" H 7700 3500 50  0001 C CNN
	1    7700 3500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7800 3450 7700 3450
Wire Wire Line
	7700 3450 7700 3500
Wire Wire Line
	7800 3150 7700 3150
Wire Wire Line
	7700 3250 7800 3250
Text Notes 7900 2900 0    50   ~ 0
OUTPUT
Text Notes 2900 2000 0    50   ~ 0
R1 & R2 are I2C Pullups and may not be required.
Wire Wire Line
	3250 3150 3450 3150
$Comp
L Logic_LevelTranslator:TXB0102DCT U1
U 1 1 5BE9042E
P 5700 3050
F 0 "U1" H 5700 2464 50  0000 C CNN
F 1 "TXB0102DCT" H 5700 2373 50  0000 C CNN
F 2 "Package_SO:TSSOP-8_3x3mm_P0.65mm" H 5700 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0102.pdf" H 5700 3020 50  0001 C CNN
	1    5700 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2300 3550 2300
Wire Wire Line
	3850 2300 3850 2350
Text GLabel 3400 2250 1    50   Input ~ 0
Vcca
Wire Wire Line
	3400 2250 3400 2300
Connection ~ 3400 2300
Text GLabel 5600 2450 1    50   Input ~ 0
Vcca
Text GLabel 5800 2450 1    50   Input ~ 0
Vccb
Text GLabel 7650 3000 1    50   Input ~ 0
Vccb
Text GLabel 6200 3150 2    50   Input ~ 0
SCLb
Text GLabel 6200 2950 2    50   Input ~ 0
SDAb
Text GLabel 5200 3150 0    50   Input ~ 0
SCLa
Text GLabel 5200 2950 0    50   Input ~ 0
SDAa
Wire Wire Line
	5200 2950 5300 2950
Wire Wire Line
	5300 3150 5200 3150
NoConn ~ 7800 3350
Text GLabel 4650 3350 0    50   Input ~ 0
OE
Text GLabel 4650 2950 1    50   Input ~ 0
Vcca
$Comp
L Device:R R3
U 1 1 5BEA240B
P 4650 3150
F 0 "R3" H 4720 3196 50  0000 L CNN
F 1 "10k" H 4720 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4580 3150 50  0001 C CNN
F 3 "~" H 4650 3150 50  0001 C CNN
	1    4650 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3000 4650 2950
Wire Wire Line
	4650 3300 4650 3350
Wire Wire Line
	4650 3350 5300 3350
$Comp
L power:Earth #PWR0101
U 1 1 5BEA703F
P 5700 3850
F 0 "#PWR0101" H 5700 3600 50  0001 C CNN
F 1 "Earth" H 5700 3700 50  0001 C CNN
F 2 "" H 5700 3850 50  0001 C CNN
F 3 "~" H 5700 3850 50  0001 C CNN
	1    5700 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3850 5700 3550
$Comp
L Device:C C1
U 1 1 5BEA9F1E
P 4850 4050
F 0 "C1" H 4965 4096 50  0000 L CNN
F 1 "0.1uF" H 4965 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4888 3900 50  0001 C CNN
F 3 "~" H 4850 4050 50  0001 C CNN
	1    4850 4050
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0102
U 1 1 5BEA9F25
P 4850 4200
F 0 "#PWR0102" H 4850 3950 50  0001 C CNN
F 1 "Earth" H 4850 4050 50  0001 C CNN
F 2 "" H 4850 4200 50  0001 C CNN
F 3 "~" H 4850 4200 50  0001 C CNN
	1    4850 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5BEAB1E1
P 6350 4050
F 0 "C2" H 6465 4096 50  0000 L CNN
F 1 "0.1uF" H 6465 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6388 3900 50  0001 C CNN
F 3 "~" H 6350 4050 50  0001 C CNN
	1    6350 4050
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0103
U 1 1 5BEAB1E8
P 6350 4200
F 0 "#PWR0103" H 6350 3950 50  0001 C CNN
F 1 "Earth" H 6350 4050 50  0001 C CNN
F 2 "" H 6350 4200 50  0001 C CNN
F 3 "~" H 6350 4200 50  0001 C CNN
	1    6350 4200
	1    0    0    -1  
$EndComp
Text GLabel 4850 3800 1    50   Input ~ 0
Vcca
Text GLabel 6350 3800 1    50   Input ~ 0
Vccb
Wire Wire Line
	4850 3800 4850 3900
Wire Wire Line
	6350 3800 6350 3900
Wire Wire Line
	6200 2950 6100 2950
Wire Wire Line
	6100 3150 6200 3150
Wire Wire Line
	5800 2450 5800 2550
Wire Wire Line
	5600 2450 5600 2550
Text Notes 4050 1700 0    50   ~ 0
3v3 Side
Text Notes 6750 1700 0    50   ~ 0
5v Side
$EndSCHEMATC

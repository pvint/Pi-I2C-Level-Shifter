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
P 10150 3250
F 0 "J4" H 10230 3292 50  0000 L CNN
F 1 "Conn_01x05" H 10230 3201 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Horizontal" H 10150 3250 50  0001 C CNN
F 3 "~" H 10150 3250 50  0001 C CNN
	1    10150 3250
	1    0    0    1   
$EndComp
Wire Wire Line
	9950 3050 9800 3050
Wire Wire Line
	9800 3050 9800 3000
Text GLabel 9850 3250 0    50   Input ~ 0
SCLb
Text GLabel 9850 3150 0    50   Input ~ 0
SDAb
$Comp
L power:Earth #PWR08
U 1 1 5BC49620
P 9850 3500
F 0 "#PWR08" H 9850 3250 50  0001 C CNN
F 1 "Earth" H 9850 3350 50  0001 C CNN
F 2 "" H 9850 3500 50  0001 C CNN
F 3 "~" H 9850 3500 50  0001 C CNN
	1    9850 3500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9950 3450 9850 3450
Wire Wire Line
	9850 3450 9850 3500
Wire Wire Line
	9950 3150 9850 3150
Wire Wire Line
	9850 3250 9950 3250
Text Notes 10050 2900 0    50   ~ 0
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
Text GLabel 9800 3000 1    50   Input ~ 0
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
NoConn ~ 9950 3350
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
$Comp
L Interface_Expansion:TCA9534 U2
U 1 1 5BEC7A76
P 8350 3300
F 0 "U2" H 8350 4078 50  0000 C CNN
F 1 "TCA9534" H 8350 3987 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 9300 2750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tca9534.pdf" H 8450 3200 50  0001 C CNN
	1    8350 3300
	1    0    0    -1  
$EndComp
Text GLabel 7850 3000 0    50   Input ~ 0
SCLb
Text GLabel 7850 3100 0    50   Input ~ 0
SDAb
Text GLabel 8350 2450 1    50   Input ~ 0
Vccb
$Comp
L Device:C C3
U 1 1 5BECA389
P 8900 2550
F 0 "C3" H 9015 2596 50  0000 L CNN
F 1 "0.1uF" H 9015 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8938 2400 50  0001 C CNN
F 3 "~" H 8900 2550 50  0001 C CNN
	1    8900 2550
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0104
U 1 1 5BECA390
P 8900 2700
F 0 "#PWR0104" H 8900 2450 50  0001 C CNN
F 1 "Earth" H 8900 2550 50  0001 C CNN
F 2 "" H 8900 2700 50  0001 C CNN
F 3 "~" H 8900 2700 50  0001 C CNN
	1    8900 2700
	1    0    0    -1  
$EndComp
Text GLabel 8900 2300 1    50   Input ~ 0
Vccb
Wire Wire Line
	8900 2300 8900 2400
Wire Wire Line
	8350 2700 8350 2450
Wire Wire Line
	7950 3000 7850 3000
Wire Wire Line
	7850 3100 7950 3100
$Comp
L power:Earth #PWR0105
U 1 1 5BECB6E4
P 8350 4050
F 0 "#PWR0105" H 8350 3800 50  0001 C CNN
F 1 "Earth" H 8350 3900 50  0001 C CNN
F 2 "" H 8350 4050 50  0001 C CNN
F 3 "~" H 8350 4050 50  0001 C CNN
	1    8350 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 4050 8350 4000
$Comp
L Device:R R4
U 1 1 5BECC1F4
P 7400 2750
F 0 "R4" H 7470 2796 50  0000 L CNN
F 1 "10k" H 7470 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7330 2750 50  0001 C CNN
F 3 "~" H 7400 2750 50  0001 C CNN
	1    7400 2750
	1    0    0    -1  
$EndComp
Text GLabel 7400 2500 1    50   Input ~ 0
Vccb
Text GLabel 6850 3200 0    50   Input ~ 0
OE
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5BECDE1B
P 7150 3200
F 0 "JP1" H 7150 3405 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 7150 3314 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 7150 3200 50  0001 C CNN
F 3 "~" H 7150 3200 50  0001 C CNN
	1    7150 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3200 7000 3200
Wire Wire Line
	7300 3200 7400 3200
Wire Wire Line
	7400 2900 7400 3200
Connection ~ 7400 3200
Wire Wire Line
	7400 3200 7950 3200
Wire Wire Line
	7400 2600 7400 2500
Text GLabel 7850 3500 0    50   Input ~ 0
A0
Text GLabel 7850 3600 0    50   Input ~ 0
A1
Text GLabel 7850 3700 0    50   Input ~ 0
A2
Wire Wire Line
	7850 3500 7950 3500
Wire Wire Line
	7950 3600 7850 3600
Wire Wire Line
	7850 3700 7950 3700
Text Notes 7650 4250 2    50   ~ 0
I2C Address:\n0 1 1 1 A2 A1 A0\n0x38 - 0x3f
$Comp
L power:Earth #PWR0106
U 1 1 5BED54D7
P 7450 5000
F 0 "#PWR0106" H 7450 4750 50  0001 C CNN
F 1 "Earth" H 7450 4850 50  0001 C CNN
F 2 "" H 7450 5000 50  0001 C CNN
F 3 "~" H 7450 5000 50  0001 C CNN
	1    7450 5000
	1    0    0    -1  
$EndComp
Text GLabel 7450 4600 1    50   Input ~ 0
Vccb
Text GLabel 7950 4800 0    50   Input ~ 0
A0
Text GLabel 7300 4800 0    50   Input ~ 0
A1
Text GLabel 6700 4800 0    50   Input ~ 0
A2
Text GLabel 8850 3000 2    50   Input ~ 0
P0
Text GLabel 8850 3100 2    50   Input ~ 0
P1
Text GLabel 8850 3200 2    50   Input ~ 0
P2
Text GLabel 8850 3300 2    50   Input ~ 0
P3
Text GLabel 8850 3400 2    50   Input ~ 0
P4
Text GLabel 8850 3500 2    50   Input ~ 0
P5
Text GLabel 8850 3600 2    50   Input ~ 0
P6
Text GLabel 8850 3700 2    50   Input ~ 0
P7
Text GLabel 9500 4600 0    50   Input ~ 0
P0
Text GLabel 10200 4600 2    50   Input ~ 0
P1
Text GLabel 9500 4700 0    50   Input ~ 0
P2
Text GLabel 10200 4700 2    50   Input ~ 0
P3
Text GLabel 9500 4800 0    50   Input ~ 0
P4
Text GLabel 10200 4800 2    50   Input ~ 0
P5
Text GLabel 9500 4900 0    50   Input ~ 0
P6
Text GLabel 10200 4900 2    50   Input ~ 0
P7
Text GLabel 9500 5100 0    50   Input ~ 0
SCLb
Text GLabel 9500 5000 0    50   Input ~ 0
SDAb
Text GLabel 10200 5000 2    50   Input ~ 0
Vccb
$Comp
L power:Earth #PWR0107
U 1 1 5BEECD4E
P 10100 5200
F 0 "#PWR0107" H 10100 4950 50  0001 C CNN
F 1 "Earth" H 10100 5050 50  0001 C CNN
F 2 "" H 10100 5200 50  0001 C CNN
F 3 "~" H 10100 5200 50  0001 C CNN
	1    10100 5200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10100 5000 10200 5000
Wire Wire Line
	10200 4900 10100 4900
Wire Wire Line
	9600 4900 9500 4900
Wire Wire Line
	9500 5000 9600 5000
Wire Wire Line
	9600 5100 9500 5100
Wire Wire Line
	9500 4600 9600 4600
Wire Wire Line
	9600 4700 9500 4700
Wire Wire Line
	9500 4800 9600 4800
Wire Wire Line
	10100 4800 10200 4800
Wire Wire Line
	10200 4700 10100 4700
Wire Wire Line
	10100 4600 10200 4600
Wire Wire Line
	8750 3000 8850 3000
Wire Wire Line
	8850 3100 8750 3100
Wire Wire Line
	8750 3200 8850 3200
Wire Wire Line
	8850 3300 8750 3300
Wire Wire Line
	8750 3400 8850 3400
Wire Wire Line
	8850 3500 8750 3500
Wire Wire Line
	8750 3600 8850 3600
Wire Wire Line
	8850 3700 8750 3700
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J2
U 1 1 5BF040E7
P 9800 4800
F 0 "J2" H 9850 5217 50  0000 C CNN
F 1 "Conn_02x06_Odd_Even" H 9850 5126 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical" H 9800 4800 50  0001 C CNN
F 3 "~" H 9800 4800 50  0001 C CNN
	1    9800 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 5200 10100 5100
$Comp
L Jumper:SolderJumper_3_Open JP2
U 1 1 5BF0E2A1
P 6850 4800
F 0 "JP2" V 6850 4868 50  0000 L CNN
F 1 "SolderJumper_3_Open" H 6850 4914 50  0001 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6850 4800 50  0001 C CNN
F 3 "~" H 6850 4800 50  0001 C CNN
	1    6850 4800
	0    1    -1   0   
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP3
U 1 1 5BF12780
P 7450 4800
F 0 "JP3" V 7450 4868 50  0000 L CNN
F 1 "SolderJumper_3_Open" H 7450 4914 50  0001 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 7450 4800 50  0001 C CNN
F 3 "~" H 7450 4800 50  0001 C CNN
	1    7450 4800
	0    1    -1   0   
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP4
U 1 1 5BF13E34
P 8100 4800
F 0 "JP4" V 8100 4868 50  0000 L CNN
F 1 "SolderJumper_3_Open" H 8100 4914 50  0001 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8100 4800 50  0001 C CNN
F 3 "~" H 8100 4800 50  0001 C CNN
	1    8100 4800
	0    1    -1   0   
$EndComp
Wire Wire Line
	8100 4600 7450 4600
Wire Wire Line
	7450 4600 6850 4600
Connection ~ 7450 4600
Wire Wire Line
	6850 5000 7450 5000
Connection ~ 7450 5000
Wire Wire Line
	8100 5000 7450 5000
$EndSCHEMATC

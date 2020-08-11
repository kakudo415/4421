EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "4421"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_ATmega:ATmega32U4-AU U1
U 1 1 5F170DF2
P 9000 3000
F 0 "U1" H 9000 2950 50  0000 C CNN
F 1 "ATmega32U4-AU" H 9000 3100 50  0000 C CNN
F 2 "MCU:TQFP44" H 9000 3000 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-7766-8-bit-AVR-ATmega16U4-32U4_Datasheet.pdf" H 9000 3000 50  0001 C CNN
	1    9000 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 4800 8900 4900
Wire Wire Line
	8900 4900 9000 4900
Wire Wire Line
	9000 4900 9000 4800
Wire Wire Line
	9000 5000 9000 4900
Connection ~ 9000 4900
$Comp
L power:GND #PWR09
U 1 1 5F176F39
P 9000 5000
F 0 "#PWR09" H 9000 4750 50  0001 C CNN
F 1 "GND" H 9005 4827 50  0000 C CNN
F 2 "" H 9000 5000 50  0001 C CNN
F 3 "" H 9000 5000 50  0001 C CNN
	1    9000 5000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5F190D14
P 9000 1000
F 0 "#PWR01" H 9000 850 50  0001 C CNN
F 1 "VCC" H 9017 1173 50  0000 C CNN
F 2 "" H 9000 1000 50  0001 C CNN
F 3 "" H 9000 1000 50  0001 C CNN
	1    9000 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 1200 8900 1100
Wire Wire Line
	8900 1100 9000 1100
Wire Wire Line
	9000 1100 9000 1000
Wire Wire Line
	9000 1200 9000 1100
Connection ~ 9000 1100
Wire Wire Line
	9100 1200 9100 1100
Wire Wire Line
	9100 1100 9000 1100
$Comp
L Connector:AudioJack4 J2
U 1 1 5F192896
P 8800 5700
F 0 "J2" H 8757 6025 50  0000 C CNN
F 1 "AudioJack4" H 8757 5934 50  0000 C CNN
F 2 "Phone_Connector:MJ-4PP-9" H 8800 5700 50  0001 C CNN
F 3 "~" H 8800 5700 50  0001 C CNN
	1    8800 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5F194B1D
P 9000 5600
F 0 "#PWR011" H 9000 5350 50  0001 C CNN
F 1 "GND" V 9000 5450 50  0000 R CNN
F 2 "" H 9000 5600 50  0001 C CNN
F 3 "" H 9000 5600 50  0001 C CNN
	1    9000 5600
	0    -1   -1   0   
$EndComp
Text GLabel 9000 5800 2    50   Input ~ 0
SDA
Text GLabel 9000 5700 2    50   Input ~ 0
SCL
$Comp
L power:VCC #PWR014
U 1 1 5F195C57
P 9000 5900
F 0 "#PWR014" H 9000 5750 50  0001 C CNN
F 1 "VCC" V 9000 6050 50  0000 L CNN
F 2 "" H 9000 5900 50  0001 C CNN
F 3 "" H 9000 5900 50  0001 C CNN
	1    9000 5900
	0    1    1    0   
$EndComp
Text GLabel 8400 2500 0    50   Input ~ 0
D+
Text GLabel 8400 2600 0    50   Input ~ 0
D-
Text GLabel 9600 2800 2    50   Input ~ 0
SDA
Text GLabel 9600 2700 2    50   Input ~ 0
SCL
$Comp
L Switch:SW_Push SW1
U 1 1 5F19B0D0
P 2550 1500
F 0 "SW1" H 2550 1400 50  0000 C CNN
F 1 "SW_Push" H 2550 1694 50  0001 C CNN
F 2 "Cherry_MX:1u" H 2550 1700 50  0001 C CNN
F 3 "~" H 2550 1700 50  0001 C CNN
	1    2550 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 5F19B9BD
P 2800 1700
F 0 "D1" V 2800 1900 50  0000 R CNN
F 1 "D" V 2755 1621 50  0001 R CNN
F 2 "SMD:SOD123" H 2800 1700 50  0001 C CNN
F 3 "~" H 2800 1700 50  0001 C CNN
	1    2800 1700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2750 1500 2800 1500
Wire Wire Line
	2800 1500 2800 1550
Wire Wire Line
	2350 1500 2300 1500
Wire Wire Line
	2800 1850 2800 1900
Wire Wire Line
	2200 1900 2800 1900
$Comp
L Switch:SW_Push SW7
U 1 1 5F1AAC77
P 2550 2050
F 0 "SW7" H 2550 1950 50  0000 C CNN
F 1 "SW_Push" H 2550 2244 50  0001 C CNN
F 2 "Cherry_MX:1u" H 2550 2250 50  0001 C CNN
F 3 "~" H 2550 2250 50  0001 C CNN
	1    2550 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:D D7
U 1 1 5F1AAC7D
P 2800 2250
F 0 "D7" V 2800 2450 50  0000 R CNN
F 1 "D" V 2755 2171 50  0001 R CNN
F 2 "SMD:SOD123" H 2800 2250 50  0001 C CNN
F 3 "~" H 2800 2250 50  0001 C CNN
	1    2800 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2750 2050 2800 2050
Wire Wire Line
	2800 2050 2800 2100
Wire Wire Line
	2350 2050 2300 2050
Wire Wire Line
	2800 2400 2800 2450
Wire Wire Line
	2300 1500 2300 2050
Wire Wire Line
	2200 2450 2800 2450
$Comp
L Switch:SW_Push SW13
U 1 1 5F1ABD87
P 2550 2600
F 0 "SW13" H 2550 2500 50  0000 C CNN
F 1 "SW_Push" H 2550 2794 50  0001 C CNN
F 2 "Cherry_MX:1u" H 2550 2800 50  0001 C CNN
F 3 "~" H 2550 2800 50  0001 C CNN
	1    2550 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:D D13
U 1 1 5F1ABD8D
P 2800 2800
F 0 "D13" V 2800 3000 50  0000 R CNN
F 1 "D" V 2755 2721 50  0001 R CNN
F 2 "SMD:SOD123" H 2800 2800 50  0001 C CNN
F 3 "~" H 2800 2800 50  0001 C CNN
	1    2800 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2750 2600 2800 2600
Wire Wire Line
	2800 2600 2800 2650
Wire Wire Line
	2350 2600 2300 2600
Wire Wire Line
	2800 2950 2800 3000
Wire Wire Line
	2300 2050 2300 2600
Wire Wire Line
	2200 3000 2800 3000
$Comp
L Switch:SW_Push SW2
U 1 1 5F1B1E8C
P 3150 1500
F 0 "SW2" H 3150 1400 50  0000 C CNN
F 1 "SW_Push" H 3150 1694 50  0001 C CNN
F 2 "Cherry_MX:1u" H 3150 1700 50  0001 C CNN
F 3 "~" H 3150 1700 50  0001 C CNN
	1    3150 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D2
U 1 1 5F1B1E92
P 3400 1700
F 0 "D2" V 3400 1900 50  0000 R CNN
F 1 "D" V 3355 1621 50  0001 R CNN
F 2 "SMD:SOD123" H 3400 1700 50  0001 C CNN
F 3 "~" H 3400 1700 50  0001 C CNN
	1    3400 1700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3350 1500 3400 1500
Wire Wire Line
	3400 1500 3400 1550
Wire Wire Line
	2950 1500 2900 1500
Wire Wire Line
	3400 1850 3400 1900
Wire Wire Line
	2800 1900 3400 1900
$Comp
L Switch:SW_Push SW8
U 1 1 5F1B1E9E
P 3150 2050
F 0 "SW8" H 3150 1950 50  0000 C CNN
F 1 "SW_Push" H 3150 2244 50  0001 C CNN
F 2 "Cherry_MX:1u" H 3150 2250 50  0001 C CNN
F 3 "~" H 3150 2250 50  0001 C CNN
	1    3150 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:D D8
U 1 1 5F1B1EA4
P 3400 2250
F 0 "D8" V 3400 2450 50  0000 R CNN
F 1 "D" V 3355 2171 50  0001 R CNN
F 2 "SMD:SOD123" H 3400 2250 50  0001 C CNN
F 3 "~" H 3400 2250 50  0001 C CNN
	1    3400 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3350 2050 3400 2050
Wire Wire Line
	3400 2050 3400 2100
Wire Wire Line
	2950 2050 2900 2050
Wire Wire Line
	3400 2400 3400 2450
Wire Wire Line
	2900 1500 2900 2050
Wire Wire Line
	2800 2450 3400 2450
$Comp
L Switch:SW_Push SW14
U 1 1 5F1B1EB0
P 3150 2600
F 0 "SW14" H 3150 2500 50  0000 C CNN
F 1 "SW_Push" H 3150 2794 50  0001 C CNN
F 2 "Cherry_MX:1u" H 3150 2800 50  0001 C CNN
F 3 "~" H 3150 2800 50  0001 C CNN
	1    3150 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:D D14
U 1 1 5F1B1EB6
P 3400 2800
F 0 "D14" V 3400 3000 50  0000 R CNN
F 1 "D" V 3355 2721 50  0001 R CNN
F 2 "SMD:SOD123" H 3400 2800 50  0001 C CNN
F 3 "~" H 3400 2800 50  0001 C CNN
	1    3400 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3350 2600 3400 2600
Wire Wire Line
	3400 2600 3400 2650
Wire Wire Line
	2950 2600 2900 2600
Wire Wire Line
	3400 2950 3400 3000
Wire Wire Line
	2900 2050 2900 2600
Wire Wire Line
	2800 3000 3400 3000
$Comp
L Switch:SW_Push SW3
U 1 1 5F1B5C5D
P 3750 1500
F 0 "SW3" H 3750 1400 50  0000 C CNN
F 1 "SW_Push" H 3750 1694 50  0001 C CNN
F 2 "Cherry_MX:1u" H 3750 1700 50  0001 C CNN
F 3 "~" H 3750 1700 50  0001 C CNN
	1    3750 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D3
U 1 1 5F1B5C63
P 4000 1700
F 0 "D3" V 4000 1900 50  0000 R CNN
F 1 "D" V 3955 1621 50  0001 R CNN
F 2 "SMD:SOD123" H 4000 1700 50  0001 C CNN
F 3 "~" H 4000 1700 50  0001 C CNN
	1    4000 1700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3950 1500 4000 1500
Wire Wire Line
	4000 1500 4000 1550
Wire Wire Line
	3550 1500 3500 1500
Wire Wire Line
	4000 1850 4000 1900
Wire Wire Line
	3400 1900 4000 1900
$Comp
L Switch:SW_Push SW9
U 1 1 5F1B5C6F
P 3750 2050
F 0 "SW9" H 3750 1950 50  0000 C CNN
F 1 "SW_Push" H 3750 2244 50  0001 C CNN
F 2 "Cherry_MX:1u" H 3750 2250 50  0001 C CNN
F 3 "~" H 3750 2250 50  0001 C CNN
	1    3750 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:D D9
U 1 1 5F1B5C75
P 4000 2250
F 0 "D9" V 4000 2450 50  0000 R CNN
F 1 "D" V 3955 2171 50  0001 R CNN
F 2 "SMD:SOD123" H 4000 2250 50  0001 C CNN
F 3 "~" H 4000 2250 50  0001 C CNN
	1    4000 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3950 2050 4000 2050
Wire Wire Line
	4000 2050 4000 2100
Wire Wire Line
	3550 2050 3500 2050
Wire Wire Line
	4000 2400 4000 2450
Wire Wire Line
	3500 1500 3500 2050
Wire Wire Line
	3400 2450 4000 2450
$Comp
L Switch:SW_Push SW15
U 1 1 5F1B5C81
P 3750 2600
F 0 "SW15" H 3750 2500 50  0000 C CNN
F 1 "SW_Push" H 3750 2794 50  0001 C CNN
F 2 "Cherry_MX:1u" H 3750 2800 50  0001 C CNN
F 3 "~" H 3750 2800 50  0001 C CNN
	1    3750 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:D D15
U 1 1 5F1B5C87
P 4000 2800
F 0 "D15" V 4000 3000 50  0000 R CNN
F 1 "D" V 3955 2721 50  0001 R CNN
F 2 "SMD:SOD123" H 4000 2800 50  0001 C CNN
F 3 "~" H 4000 2800 50  0001 C CNN
	1    4000 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3950 2600 4000 2600
Wire Wire Line
	4000 2600 4000 2650
Wire Wire Line
	3550 2600 3500 2600
Wire Wire Line
	4000 2950 4000 3000
Wire Wire Line
	3500 2050 3500 2600
Wire Wire Line
	3400 3000 4000 3000
$Comp
L Switch:SW_Push SW4
U 1 1 5F1BA71E
P 4350 1500
F 0 "SW4" H 4350 1400 50  0000 C CNN
F 1 "SW_Push" H 4350 1694 50  0001 C CNN
F 2 "Cherry_MX:1u" H 4350 1700 50  0001 C CNN
F 3 "~" H 4350 1700 50  0001 C CNN
	1    4350 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D4
U 1 1 5F1BA724
P 4600 1700
F 0 "D4" V 4600 1900 50  0000 R CNN
F 1 "D" V 4555 1621 50  0001 R CNN
F 2 "SMD:SOD123" H 4600 1700 50  0001 C CNN
F 3 "~" H 4600 1700 50  0001 C CNN
	1    4600 1700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4550 1500 4600 1500
Wire Wire Line
	4600 1500 4600 1550
Wire Wire Line
	4150 1500 4100 1500
Wire Wire Line
	4600 1850 4600 1900
Wire Wire Line
	4000 1900 4600 1900
$Comp
L Switch:SW_Push SW10
U 1 1 5F1BA730
P 4350 2050
F 0 "SW10" H 4350 1950 50  0000 C CNN
F 1 "SW_Push" H 4350 2244 50  0001 C CNN
F 2 "Cherry_MX:1u" H 4350 2250 50  0001 C CNN
F 3 "~" H 4350 2250 50  0001 C CNN
	1    4350 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:D D10
U 1 1 5F1BA736
P 4600 2250
F 0 "D10" V 4600 2450 50  0000 R CNN
F 1 "D" V 4555 2171 50  0001 R CNN
F 2 "SMD:SOD123" H 4600 2250 50  0001 C CNN
F 3 "~" H 4600 2250 50  0001 C CNN
	1    4600 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4550 2050 4600 2050
Wire Wire Line
	4600 2050 4600 2100
Wire Wire Line
	4150 2050 4100 2050
Wire Wire Line
	4600 2400 4600 2450
Wire Wire Line
	4100 1500 4100 2050
Wire Wire Line
	4000 2450 4600 2450
$Comp
L Switch:SW_Push SW16
U 1 1 5F1BA742
P 4350 2600
F 0 "SW16" H 4350 2500 50  0000 C CNN
F 1 "SW_Push" H 4350 2794 50  0001 C CNN
F 2 "Cherry_MX:1u" H 4350 2800 50  0001 C CNN
F 3 "~" H 4350 2800 50  0001 C CNN
	1    4350 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:D D16
U 1 1 5F1BA748
P 4600 2800
F 0 "D16" V 4600 3000 50  0000 R CNN
F 1 "D" V 4555 2721 50  0001 R CNN
F 2 "SMD:SOD123" H 4600 2800 50  0001 C CNN
F 3 "~" H 4600 2800 50  0001 C CNN
	1    4600 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4550 2600 4600 2600
Wire Wire Line
	4600 2600 4600 2650
Wire Wire Line
	4150 2600 4100 2600
Wire Wire Line
	4600 2950 4600 3000
Wire Wire Line
	4100 2050 4100 2600
Wire Wire Line
	4000 3000 4600 3000
$Comp
L Switch:SW_Push SW5
U 1 1 5F1BF4FD
P 4950 1500
F 0 "SW5" H 4950 1400 50  0000 C CNN
F 1 "SW_Push" H 4950 1694 50  0001 C CNN
F 2 "Cherry_MX:1u" H 4950 1700 50  0001 C CNN
F 3 "~" H 4950 1700 50  0001 C CNN
	1    4950 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D5
U 1 1 5F1BF503
P 5200 1700
F 0 "D5" V 5200 1900 50  0000 R CNN
F 1 "D" V 5155 1621 50  0001 R CNN
F 2 "SMD:SOD123" H 5200 1700 50  0001 C CNN
F 3 "~" H 5200 1700 50  0001 C CNN
	1    5200 1700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5150 1500 5200 1500
Wire Wire Line
	5200 1500 5200 1550
Wire Wire Line
	4750 1500 4700 1500
Wire Wire Line
	5200 1850 5200 1900
Wire Wire Line
	4600 1900 5200 1900
$Comp
L Switch:SW_Push SW11
U 1 1 5F1BF50F
P 4950 2050
F 0 "SW11" H 4950 1950 50  0000 C CNN
F 1 "SW_Push" H 4950 2244 50  0001 C CNN
F 2 "Cherry_MX:1u" H 4950 2250 50  0001 C CNN
F 3 "~" H 4950 2250 50  0001 C CNN
	1    4950 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:D D11
U 1 1 5F1BF515
P 5200 2250
F 0 "D11" V 5200 2450 50  0000 R CNN
F 1 "D" V 5155 2171 50  0001 R CNN
F 2 "SMD:SOD123" H 5200 2250 50  0001 C CNN
F 3 "~" H 5200 2250 50  0001 C CNN
	1    5200 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5150 2050 5200 2050
Wire Wire Line
	5200 2050 5200 2100
Wire Wire Line
	4750 2050 4700 2050
Wire Wire Line
	5200 2400 5200 2450
Wire Wire Line
	4700 1500 4700 2050
Wire Wire Line
	4600 2450 5200 2450
$Comp
L Switch:SW_Push SW17
U 1 1 5F1BF521
P 4950 2600
F 0 "SW17" H 4950 2500 50  0000 C CNN
F 1 "SW_Push" H 4950 2794 50  0001 C CNN
F 2 "Cherry_MX:1u" H 4950 2800 50  0001 C CNN
F 3 "~" H 4950 2800 50  0001 C CNN
	1    4950 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:D D17
U 1 1 5F1BF527
P 5200 2800
F 0 "D17" V 5200 3000 50  0000 R CNN
F 1 "D" V 5155 2721 50  0001 R CNN
F 2 "SMD:SOD123" H 5200 2800 50  0001 C CNN
F 3 "~" H 5200 2800 50  0001 C CNN
	1    5200 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5150 2600 5200 2600
Wire Wire Line
	5200 2600 5200 2650
Wire Wire Line
	4750 2600 4700 2600
Wire Wire Line
	5200 2950 5200 3000
Wire Wire Line
	4700 2050 4700 2600
Wire Wire Line
	4600 3000 5200 3000
$Comp
L Switch:SW_Push SW6
U 1 1 5F1C4998
P 5550 1500
F 0 "SW6" H 5550 1400 50  0000 C CNN
F 1 "SW_Push" H 5550 1694 50  0001 C CNN
F 2 "Cherry_MX:1u" H 5550 1700 50  0001 C CNN
F 3 "~" H 5550 1700 50  0001 C CNN
	1    5550 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D6
U 1 1 5F1C499E
P 5800 1700
F 0 "D6" V 5800 1900 50  0000 R CNN
F 1 "D" V 5755 1621 50  0001 R CNN
F 2 "SMD:SOD123" H 5800 1700 50  0001 C CNN
F 3 "~" H 5800 1700 50  0001 C CNN
	1    5800 1700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5750 1500 5800 1500
Wire Wire Line
	5800 1500 5800 1550
Wire Wire Line
	5350 1500 5300 1500
Wire Wire Line
	5800 1850 5800 1900
Wire Wire Line
	5200 1900 5800 1900
$Comp
L Switch:SW_Push SW12
U 1 1 5F1C49AA
P 5550 2050
F 0 "SW12" H 5550 1950 50  0000 C CNN
F 1 "SW_Push" H 5550 2244 50  0001 C CNN
F 2 "Cherry_MX:1u" H 5550 2250 50  0001 C CNN
F 3 "~" H 5550 2250 50  0001 C CNN
	1    5550 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:D D12
U 1 1 5F1C49B0
P 5800 2250
F 0 "D12" V 5800 2450 50  0000 R CNN
F 1 "D" V 5755 2171 50  0001 R CNN
F 2 "SMD:SOD123" H 5800 2250 50  0001 C CNN
F 3 "~" H 5800 2250 50  0001 C CNN
	1    5800 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5750 2050 5800 2050
Wire Wire Line
	5800 2050 5800 2100
Wire Wire Line
	5350 2050 5300 2050
Wire Wire Line
	5800 2400 5800 2450
Wire Wire Line
	5300 1500 5300 2050
Wire Wire Line
	5200 2450 5800 2450
$Comp
L Switch:SW_Push SW18
U 1 1 5F1C49BC
P 5550 2600
F 0 "SW18" H 5550 2500 50  0000 C CNN
F 1 "SW_Push" H 5550 2794 50  0001 C CNN
F 2 "Cherry_MX:1u" H 5550 2800 50  0001 C CNN
F 3 "~" H 5550 2800 50  0001 C CNN
	1    5550 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:D D18
U 1 1 5F1C49C2
P 5800 2800
F 0 "D18" V 5800 3000 50  0000 R CNN
F 1 "D" V 5755 2721 50  0001 R CNN
F 2 "SMD:SOD123" H 5800 2800 50  0001 C CNN
F 3 "~" H 5800 2800 50  0001 C CNN
	1    5800 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5750 2600 5800 2600
Wire Wire Line
	5800 2600 5800 2650
Wire Wire Line
	5350 2600 5300 2600
Wire Wire Line
	5800 2950 5800 3000
Wire Wire Line
	5300 2050 5300 2600
Wire Wire Line
	5200 3000 5800 3000
$Comp
L Switch:SW_Push SW20
U 1 1 5F1CDA8D
P 3150 3150
F 0 "SW20" H 3150 3050 50  0000 C CNN
F 1 "SW_Push" H 3150 3344 50  0001 C CNN
F 2 "Cherry_MX:1u" H 3150 3350 50  0001 C CNN
F 3 "~" H 3150 3350 50  0001 C CNN
	1    3150 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:D D20
U 1 1 5F1CDA93
P 3400 3350
F 0 "D20" V 3400 3550 50  0000 R CNN
F 1 "D" V 3355 3271 50  0001 R CNN
F 2 "SMD:SOD123" H 3400 3350 50  0001 C CNN
F 3 "~" H 3400 3350 50  0001 C CNN
	1    3400 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3350 3150 3400 3150
Wire Wire Line
	3400 3150 3400 3200
Wire Wire Line
	2950 3150 2900 3150
Wire Wire Line
	3400 3500 3400 3550
Wire Wire Line
	2900 2600 2900 3150
$Comp
L Switch:SW_Push SW21
U 1 1 5F1D2572
P 3750 3150
F 0 "SW21" H 3750 3050 50  0000 C CNN
F 1 "SW_Push" H 3750 3344 50  0001 C CNN
F 2 "Cherry_MX:1u" H 3750 3350 50  0001 C CNN
F 3 "~" H 3750 3350 50  0001 C CNN
	1    3750 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:D D21
U 1 1 5F1D2578
P 4000 3350
F 0 "D21" V 4000 3550 50  0000 R CNN
F 1 "D" V 3955 3271 50  0001 R CNN
F 2 "SMD:SOD123" H 4000 3350 50  0001 C CNN
F 3 "~" H 4000 3350 50  0001 C CNN
	1    4000 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3950 3150 4000 3150
Wire Wire Line
	4000 3150 4000 3200
Wire Wire Line
	3550 3150 3500 3150
Wire Wire Line
	4000 3500 4000 3550
Wire Wire Line
	3500 2600 3500 3150
Wire Wire Line
	3400 3550 4000 3550
$Comp
L Switch:SW_Push SW23
U 1 1 5F1D7224
P 4950 3150
F 0 "SW23" H 4950 3050 50  0000 C CNN
F 1 "SW_Push" H 4950 3344 50  0001 C CNN
F 2 "Cherry_MX:1u" H 4950 3350 50  0001 C CNN
F 3 "~" H 4950 3350 50  0001 C CNN
	1    4950 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:D D23
U 1 1 5F1D722A
P 5200 3350
F 0 "D23" V 5200 3550 50  0000 R CNN
F 1 "D" V 5155 3271 50  0001 R CNN
F 2 "SMD:SOD123" H 5200 3350 50  0001 C CNN
F 3 "~" H 5200 3350 50  0001 C CNN
	1    5200 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5150 3150 5200 3150
Wire Wire Line
	5200 3150 5200 3200
Wire Wire Line
	4750 3150 4700 3150
Wire Wire Line
	5200 3500 5200 3550
Wire Wire Line
	4700 2600 4700 3150
$Comp
L Switch:SW_Push SW24
U 1 1 5F1DC498
P 5550 3150
F 0 "SW24" H 5550 3050 50  0000 C CNN
F 1 "SW_Push" H 5550 3344 50  0001 C CNN
F 2 "Cherry_MX:1u" H 5550 3350 50  0001 C CNN
F 3 "~" H 5550 3350 50  0001 C CNN
	1    5550 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:D D24
U 1 1 5F1DC49E
P 5800 3350
F 0 "D24" V 5800 3550 50  0000 R CNN
F 1 "D" V 5755 3271 50  0001 R CNN
F 2 "SMD:SOD123" H 5800 3350 50  0001 C CNN
F 3 "~" H 5800 3350 50  0001 C CNN
	1    5800 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5750 3150 5800 3150
Wire Wire Line
	5800 3150 5800 3200
Wire Wire Line
	5350 3150 5300 3150
Wire Wire Line
	5800 3500 5800 3550
Wire Wire Line
	5300 2600 5300 3150
Wire Wire Line
	5200 3550 5800 3550
Wire Wire Line
	4000 3550 4600 3550
Connection ~ 4000 3550
Connection ~ 5300 2050
Connection ~ 5200 1900
Connection ~ 4600 1900
Connection ~ 4000 1900
Connection ~ 3400 1900
Connection ~ 2800 1900
Connection ~ 2300 2050
Connection ~ 2900 2050
Connection ~ 2900 2600
Connection ~ 3500 2050
Connection ~ 3500 2600
Connection ~ 4100 2050
Connection ~ 4700 2050
Connection ~ 4700 2600
Connection ~ 5300 2600
Connection ~ 3400 3550
Connection ~ 2800 3000
Connection ~ 2800 2450
Connection ~ 3400 2450
Connection ~ 3400 3000
Connection ~ 4000 3000
Connection ~ 4600 3000
Connection ~ 5200 3000
Connection ~ 5200 2450
Connection ~ 4600 2450
Connection ~ 4000 2450
Connection ~ 5200 3550
Text GLabel 2200 1900 0    50   Input ~ 0
R0
Text GLabel 2200 2450 0    50   Input ~ 0
R1
Text GLabel 2200 3000 0    50   Input ~ 0
R2
Text GLabel 2200 3550 0    50   Input ~ 0
R3
Wire Wire Line
	2300 1500 2300 1300
Connection ~ 2300 1500
Wire Wire Line
	2900 1500 2900 1300
Connection ~ 2900 1500
Wire Wire Line
	3500 1300 3500 1500
Connection ~ 3500 1500
Wire Wire Line
	4100 1300 4100 1500
Connection ~ 4100 1500
Wire Wire Line
	4700 1300 4700 1500
Connection ~ 4700 1500
Wire Wire Line
	5300 1300 5300 1500
Connection ~ 5300 1500
Text GLabel 2300 1300 1    50   Input ~ 0
C0
Text GLabel 2900 1300 1    50   Input ~ 0
C1
Text GLabel 3500 1300 1    50   Input ~ 0
C2
Text GLabel 4100 1300 1    50   Input ~ 0
C3
Text GLabel 4700 1300 1    50   Input ~ 0
C4
Text GLabel 5300 1300 1    50   Input ~ 0
C5
Text GLabel 9600 2400 2    50   Input ~ 0
C0
Text GLabel 9600 2100 2    50   Input ~ 0
C1
Text GLabel 9600 2000 2    50   Input ~ 0
C2
Text GLabel 9600 4400 2    50   Input ~ 0
C3
Text GLabel 9600 4100 2    50   Input ~ 0
C4
Text GLabel 9600 4200 2    50   Input ~ 0
C5
Text GLabel 9600 3900 2    50   Input ~ 0
R0
Text GLabel 9600 1900 2    50   Input ~ 0
R1
Text GLabel 9600 3400 2    50   Input ~ 0
R2
Text GLabel 9600 3300 2    50   Input ~ 0
R3
$Comp
L power:VCC #PWR02
U 1 1 5F28990C
P 6500 1500
F 0 "#PWR02" H 6500 1350 50  0001 C CNN
F 1 "VCC" H 6517 1673 50  0000 C CNN
F 2 "" H 6500 1500 50  0001 C CNN
F 3 "" H 6500 1500 50  0001 C CNN
	1    6500 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5F28A5BD
P 7000 1600
F 0 "#PWR03" H 7000 1350 50  0001 C CNN
F 1 "GND" H 7005 1427 50  0000 C CNN
F 2 "" H 7000 1600 50  0001 C CNN
F 3 "" H 7000 1600 50  0001 C CNN
	1    7000 1600
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5F28BAE8
P 6500 1600
F 0 "#FLG02" H 6500 1675 50  0001 C CNN
F 1 "PWR_FLAG" H 6500 1773 50  0000 C CNN
F 2 "" H 6500 1600 50  0001 C CNN
F 3 "~" H 6500 1600 50  0001 C CNN
	1    6500 1600
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5F28C5D0
P 7000 1500
F 0 "#FLG01" H 7000 1575 50  0001 C CNN
F 1 "PWR_FLAG" H 7000 1673 50  0000 C CNN
F 2 "" H 7000 1500 50  0001 C CNN
F 3 "~" H 7000 1500 50  0001 C CNN
	1    7000 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1500 6500 1600
Wire Wire Line
	7000 1500 7000 1600
NoConn ~ 9600 2200
NoConn ~ 9600 2900
NoConn ~ 9600 3000
NoConn ~ 9600 3100
NoConn ~ 9600 3200
NoConn ~ 9600 3700
$Comp
L power:VCC #PWR05
U 1 1 5F2D37B3
P 8300 2200
F 0 "#PWR05" H 8300 2050 50  0001 C CNN
F 1 "VCC" H 8247 2237 50  0000 R CNN
F 2 "" H 8300 2200 50  0001 C CNN
F 3 "" H 8300 2200 50  0001 C CNN
	1    8300 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 2200 8300 2300
Wire Wire Line
	8300 2300 8400 2300
NoConn ~ 8400 2100
$Comp
L Device:C_Small C3
U 1 1 5F2E169A
P 8300 3000
F 0 "C3" H 8209 3046 50  0000 R CNN
F 1 "1u" H 8209 2955 50  0000 R CNN
F 2 "SMD:2012M" H 8300 3000 50  0001 C CNN
F 3 "~" H 8300 3000 50  0001 C CNN
	1    8300 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 2900 8300 2800
Wire Wire Line
	8300 2800 8400 2800
Wire Wire Line
	8300 3200 8300 3100
$Comp
L power:GND #PWR06
U 1 1 5F2EDE74
P 8300 3200
F 0 "#PWR06" H 8300 2950 50  0001 C CNN
F 1 "GND" H 8305 3027 50  0000 C CNN
F 2 "" H 8300 3200 50  0001 C CNN
F 3 "" H 8300 3200 50  0001 C CNN
	1    8300 3200
	1    0    0    -1  
$EndComp
Text GLabel 8400 1500 0    50   Input ~ 0
RESET
$Comp
L Device:R R1
U 1 1 5F2EF1AF
P 9850 3600
F 0 "R1" V 9750 3600 50  0000 C CNN
F 1 "10k" V 9850 3600 50  0000 C CNN
F 2 "SMD:2012M" V 9780 3600 50  0001 C CNN
F 3 "~" H 9850 3600 50  0001 C CNN
	1    9850 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	9600 3600 9700 3600
Wire Wire Line
	10100 3700 10100 3600
Wire Wire Line
	10100 3600 10000 3600
$Comp
L power:GND #PWR07
U 1 1 5F2FC3BA
P 10100 3700
F 0 "#PWR07" H 10100 3450 50  0001 C CNN
F 1 "GND" H 10105 3527 50  0000 C CNN
F 2 "" H 10100 3700 50  0001 C CNN
F 3 "" H 10100 3700 50  0001 C CNN
	1    10100 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal_Small Y1
U 1 1 5F3030EE
P 8300 1800
F 0 "Y1" V 8254 1713 50  0000 R CNN
F 1 "16MHz" V 8345 1713 50  0000 R CNN
F 2 "Crystal:Crystal-HC-49-S" H 8300 1800 50  0001 C CNN
F 3 "~" H 8300 1800 50  0001 C CNN
	1    8300 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	8400 1700 8300 1700
Wire Wire Line
	8400 1900 8300 1900
$Comp
L Device:C_Small C1
U 1 1 5F3110D1
P 7850 1700
F 0 "C1" V 7621 1700 50  0000 C CNN
F 1 "22p" V 7712 1700 50  0000 C CNN
F 2 "SMD:2012M" H 7850 1700 50  0001 C CNN
F 3 "~" H 7850 1700 50  0001 C CNN
	1    7850 1700
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5F3124B9
P 7850 1900
F 0 "C2" V 7987 1900 50  0000 C CNN
F 1 "22p" V 8078 1900 50  0000 C CNN
F 2 "SMD:2012M" H 7850 1900 50  0001 C CNN
F 3 "~" H 7850 1900 50  0001 C CNN
	1    7850 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 1700 7950 1700
Connection ~ 8300 1700
Wire Wire Line
	7950 1900 8300 1900
Connection ~ 8300 1900
Wire Wire Line
	7750 1700 7650 1700
Wire Wire Line
	7650 1700 7650 1900
Wire Wire Line
	7650 1900 7750 1900
Wire Wire Line
	7650 2000 7650 1900
Connection ~ 7650 1900
$Comp
L power:GND #PWR04
U 1 1 5F32D4A1
P 7650 2000
F 0 "#PWR04" H 7650 1750 50  0001 C CNN
F 1 "GND" H 7655 1827 50  0000 C CNN
F 2 "" H 7650 2000 50  0001 C CNN
F 3 "" H 7650 2000 50  0001 C CNN
	1    7650 2000
	1    0    0    -1  
$EndComp
$Comp
L kyosoc:TYPE-C-31-M-12 J1
U 1 1 5F19A92D
P 6900 4750
F 0 "J1" H 6808 5715 50  0000 C CNN
F 1 "TYPE-C-31-M-12" H 6808 5624 50  0000 C CNN
F 2 "USB_Type-C:TYPE-C-31-M-12" H 6900 5000 50  0001 C CNN
F 3 "" H 6900 5000 50  0001 C CNN
	1    6900 4750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR08
U 1 1 5F19D641
P 7300 3950
F 0 "#PWR08" H 7300 3800 50  0001 C CNN
F 1 "VCC" H 7317 4123 50  0000 C CNN
F 2 "" H 7300 3950 50  0001 C CNN
F 3 "" H 7300 3950 50  0001 C CNN
	1    7300 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3950 7300 4050
Wire Wire Line
	7300 4150 7200 4150
Wire Wire Line
	7200 4050 7300 4050
Connection ~ 7300 4050
Wire Wire Line
	7300 4050 7300 4150
Wire Wire Line
	7300 5650 7300 5550
Wire Wire Line
	7300 5450 7200 5450
Wire Wire Line
	7200 5550 7300 5550
Connection ~ 7300 5550
Wire Wire Line
	7300 5550 7300 5450
$Comp
L power:GND #PWR013
U 1 1 5F1BA9E4
P 7300 5650
F 0 "#PWR013" H 7300 5400 50  0001 C CNN
F 1 "GND" H 7305 5477 50  0000 C CNN
F 2 "" H 7300 5650 50  0001 C CNN
F 3 "" H 7300 5650 50  0001 C CNN
	1    7300 5650
	1    0    0    -1  
$EndComp
NoConn ~ 7200 5150
NoConn ~ 7200 5250
$Comp
L Device:R R4
U 1 1 5F1C960F
P 7450 4850
F 0 "R4" V 7350 4850 50  0000 C CNN
F 1 "5.1k" V 7450 4850 50  0000 C CNN
F 2 "SMD:2012M" V 7380 4850 50  0001 C CNN
F 3 "~" H 7450 4850 50  0001 C CNN
	1    7450 4850
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5F1CA583
P 7450 4950
F 0 "R5" V 7565 4950 50  0000 C CNN
F 1 "5.1k" V 7450 4950 50  0000 C CNN
F 2 "SMD:2012M" V 7380 4950 50  0001 C CNN
F 3 "~" H 7450 4950 50  0001 C CNN
	1    7450 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	7200 4850 7300 4850
Wire Wire Line
	7200 4950 7300 4950
Wire Wire Line
	7600 4850 7700 4850
Wire Wire Line
	7700 4850 7700 4950
Wire Wire Line
	7600 4950 7700 4950
Connection ~ 7700 4950
Wire Wire Line
	7700 4950 7700 5050
$Comp
L power:GND #PWR010
U 1 1 5F1E88BE
P 7700 5050
F 0 "#PWR010" H 7700 4800 50  0001 C CNN
F 1 "GND" H 7705 4877 50  0000 C CNN
F 2 "" H 7700 5050 50  0001 C CNN
F 3 "" H 7700 5050 50  0001 C CNN
	1    7700 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5F1EAAD2
P 7550 4450
F 0 "R2" V 7450 4450 50  0000 C CNN
F 1 "22" V 7550 4450 50  0000 C CNN
F 2 "SMD:2012M" V 7480 4450 50  0001 C CNN
F 3 "~" H 7550 4450 50  0001 C CNN
	1    7550 4450
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5F1EAAD8
P 7550 4550
F 0 "R3" V 7665 4550 50  0000 C CNN
F 1 "22" V 7550 4550 50  0000 C CNN
F 2 "SMD:2012M" V 7480 4550 50  0001 C CNN
F 3 "~" H 7550 4550 50  0001 C CNN
	1    7550 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	7200 4350 7300 4350
Wire Wire Line
	7300 4350 7300 4450
Wire Wire Line
	7300 4450 7400 4450
Wire Wire Line
	7200 4450 7300 4450
Connection ~ 7300 4450
Wire Wire Line
	7200 4650 7300 4650
Wire Wire Line
	7300 4650 7300 4550
Wire Wire Line
	7300 4550 7400 4550
Wire Wire Line
	7300 4550 7200 4550
Connection ~ 7300 4550
Text GLabel 7700 4450 2    50   Input ~ 0
D+
Text GLabel 7700 4550 2    50   Input ~ 0
D-
NoConn ~ 9600 2500
$Comp
L Connector:AudioJack4 J3
U 1 1 5F248BA8
P 9800 5700
F 0 "J3" H 9757 6025 50  0000 C CNN
F 1 "AudioJack4" H 9757 5934 50  0000 C CNN
F 2 "Phone_Connector:MJ-4PP-9" H 9800 5700 50  0001 C CNN
F 3 "~" H 9800 5700 50  0001 C CNN
	1    9800 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5F248BAE
P 10000 5600
F 0 "#PWR012" H 10000 5350 50  0001 C CNN
F 1 "GND" V 10000 5450 50  0000 R CNN
F 2 "" H 10000 5600 50  0001 C CNN
F 3 "" H 10000 5600 50  0001 C CNN
	1    10000 5600
	0    -1   -1   0   
$EndComp
Text GLabel 10000 5800 2    50   Input ~ 0
SDA
Text GLabel 10000 5700 2    50   Input ~ 0
SCL
$Comp
L power:VCC #PWR015
U 1 1 5F248BB6
P 10000 5900
F 0 "#PWR015" H 10000 5750 50  0001 C CNN
F 1 "VCC" V 10000 6050 50  0000 L CNN
F 2 "" H 10000 5900 50  0001 C CNN
F 3 "" H 10000 5900 50  0001 C CNN
	1    10000 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 2600 2300 3150
Wire Wire Line
	2800 3500 2800 3550
Wire Wire Line
	2350 3150 2300 3150
Wire Wire Line
	2800 3150 2800 3200
Wire Wire Line
	2750 3150 2800 3150
$Comp
L Device:D D19
U 1 1 5F26F654
P 2800 3350
F 0 "D19" V 2800 3550 50  0000 R CNN
F 1 "D" V 2755 3271 50  0001 R CNN
F 2 "SMD:SOD123" H 2800 3350 50  0001 C CNN
F 3 "~" H 2800 3350 50  0001 C CNN
	1    2800 3350
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW19
U 1 1 5F26F65A
P 2550 3150
F 0 "SW19" H 2550 3050 50  0000 C CNN
F 1 "SW_Push" H 2550 3344 50  0001 C CNN
F 2 "Cherry_MX:1u" H 2550 3350 50  0001 C CNN
F 3 "~" H 2550 3350 50  0001 C CNN
	1    2550 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3550 2800 3550
Connection ~ 2800 3550
Wire Wire Line
	2800 3550 3400 3550
Connection ~ 2300 2600
Wire Wire Line
	4100 2600 4100 3150
Wire Wire Line
	4600 3500 4600 3550
Wire Wire Line
	4150 3150 4100 3150
Wire Wire Line
	4600 3150 4600 3200
Wire Wire Line
	4550 3150 4600 3150
$Comp
L Device:D D22
U 1 1 5F279FAC
P 4600 3350
F 0 "D22" V 4600 3550 50  0000 R CNN
F 1 "D" V 4555 3271 50  0001 R CNN
F 2 "SMD:SOD123" H 4600 3350 50  0001 C CNN
F 3 "~" H 4600 3350 50  0001 C CNN
	1    4600 3350
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW22
U 1 1 5F279FB2
P 4350 3150
F 0 "SW22" H 4350 3050 50  0000 C CNN
F 1 "SW_Push" H 4350 3344 50  0001 C CNN
F 2 "Cherry_MX:1u" H 4350 3350 50  0001 C CNN
F 3 "~" H 4350 3350 50  0001 C CNN
	1    4350 3150
	1    0    0    -1  
$EndComp
Connection ~ 4600 3550
Wire Wire Line
	4600 3550 5200 3550
Connection ~ 4100 2600
$Comp
L Device:C_Small C4
U 1 1 5F28E38F
P 6500 2500
F 0 "C4" H 6409 2546 50  0000 R CNN
F 1 "1u" H 6409 2455 50  0000 R CNN
F 2 "SMD:2012M" H 6500 2500 50  0001 C CNN
F 3 "~" H 6500 2500 50  0001 C CNN
	1    6500 2500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR016
U 1 1 5F28F135
P 6500 2300
F 0 "#PWR016" H 6500 2150 50  0001 C CNN
F 1 "VCC" H 6517 2473 50  0000 C CNN
F 2 "" H 6500 2300 50  0001 C CNN
F 3 "" H 6500 2300 50  0001 C CNN
	1    6500 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5F28FA48
P 6500 2700
F 0 "#PWR017" H 6500 2450 50  0001 C CNN
F 1 "GND" H 6505 2527 50  0000 C CNN
F 2 "" H 6500 2700 50  0001 C CNN
F 3 "" H 6500 2700 50  0001 C CNN
	1    6500 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2300 6500 2400
Wire Wire Line
	6500 2600 6500 2700
NoConn ~ 9600 4300
NoConn ~ 9600 4000
$EndSCHEMATC

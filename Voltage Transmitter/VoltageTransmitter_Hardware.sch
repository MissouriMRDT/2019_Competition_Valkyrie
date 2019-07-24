EESchema Schematic File Version 4
LIBS:VoltageTransmitter_Hardware-cache
EELAYER 26 0
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
L VoltageTransmitter_Hardware-rescue:Molex_SL_02-MRDT_Connectors-Voltage-Transmitter-schematic-rescue-Voltage-Transmitter-schematic-rescue-Voltage-Transmitter-schematic-rescue Conn2
U 1 1 5BCBD3EB
P 850 1250
F 0 "Conn2" H 900 1100 60  0000 C CNN
F 1 "Molex_SL_02" H 900 1200 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_02_Horizontal" H 850 1150 60  0001 C CNN
F 3 "" H 850 1150 60  0001 C CNN
	1    850  1250
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5BD18FF4
P 1800 2600
F 0 "R1" V 1800 2600 50  0000 C CNN
F 1 "150K" V 1695 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1800 2600 50  0001 C CNN
F 3 "~" H 1800 2600 50  0001 C CNN
	1    1800 2600
	0    -1   1    0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5BD1904D
P 1950 2800
F 0 "R2" V 1950 2750 50  0000 L CNN
F 1 "15K" V 2050 2750 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1950 2800 50  0001 C CNN
F 3 "~" H 1950 2800 50  0001 C CNN
	1    1950 2800
	1    0    0    -1  
$EndComp
Text Notes 1000 1550 2    50   ~ 0
9V Battery\n
Text Notes 1100 2250 0    118  ~ 24
Voltage Sensing\n
Text Notes 1200 900  0    118  ~ 24
Power Input\n\n
$Comp
L VoltageTransmitter_Hardware-rescue:ESP8266_MCU-New_libraries-Voltage-Transmitter-schematic-rescue-Voltage-Transmitter-schematic-rescue U2
U 1 1 5BFDA2B2
P 3750 1300
F 0 "U2" H 4025 1325 50  0000 C CNN
F 1 "ESP8266_MCU" H 4025 1234 50  0000 C CNN
F 2 "VoltageTransmitter_Hardware:ESP_8266 NODEMCU" H 3750 1300 50  0001 C CNN
F 3 "" H 3750 1300 50  0001 C CNN
	1    3750 1300
	1    0    0    -1  
$EndComp
Text GLabel 3600 1500 0    50   Input ~ 0
Din
$Comp
L VoltageTransmitter_Hardware-rescue:AndersonPP-MRDT_Connectors-Voltage-Transmitter-schematic-rescue Conn1
U 1 1 5BFDAEAB
P 1250 2500
F 0 "Conn1" H 1300 2450 60  0000 C CNN
F 1 "AndersonPP-MRDT_Connectors" H 1450 2750 60  0001 C CNN
F 2 "MRDT_Connectors:Anderson_2_Horizontal_Stacked" H 1100 1950 60  0001 C CNN
F 3 "" H 1100 1950 60  0001 C CNN
	1    1250 2500
	1    0    0    1   
$EndComp
Wire Wire Line
	1650 2600 1700 2600
Wire Wire Line
	1950 2700 1950 2600
$Comp
L power:GND #PWR0102
U 1 1 5C01F773
P 2050 3000
F 0 "#PWR0102" H 2050 2750 50  0001 C CNN
F 1 "GND" H 2200 3000 50  0000 C CNN
F 2 "" H 2050 3000 50  0001 C CNN
F 3 "" H 2050 3000 50  0001 C CNN
	1    2050 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5C01FBEC
P 1700 1350
F 0 "C1" H 1700 1450 50  0000 L CNN
F 1 "10uF" H 1700 1250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1738 1200 50  0001 C CNN
F 3 "~" H 1700 1350 50  0001 C CNN
	1    1700 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0101
U 1 1 5C020F6A
P 2650 1150
F 0 "#PWR0101" H 2650 1000 50  0001 C CNN
F 1 "+3.3V" H 2500 1300 50  0000 L CNN
F 2 "" H 2650 1150 50  0001 C CNN
F 3 "" H 2650 1150 50  0001 C CNN
	1    2650 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3000 1950 3000
Wire Wire Line
	1950 2900 1950 3000
Connection ~ 1950 3000
Wire Wire Line
	1950 3000 2050 3000
Text GLabel 2050 2600 2    50   Output ~ 0
Din
$Comp
L power:GND #PWR0104
U 1 1 5C02C0E5
P 3350 2625
F 0 "#PWR0104" H 3350 2375 50  0001 C CNN
F 1 "GND" H 3355 2452 50  0000 C CNN
F 2 "" H 3350 2625 50  0001 C CNN
F 3 "" H 3350 2625 50  0001 C CNN
	1    3350 2625
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0105
U 1 1 5C02C19A
P 3550 2500
F 0 "#PWR0105" H 3550 2350 50  0001 C CNN
F 1 "+3.3V" V 3600 2450 50  0000 L CNN
F 2 "" H 3550 2500 50  0001 C CNN
F 3 "" H 3550 2500 50  0001 C CNN
	1    3550 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3550 2500 3650 2500
Wire Wire Line
	3350 2400 3350 2625
Text Notes 3500 700  0    118  ~ 24
ESP8266-12e\n
$Comp
L VoltageTransmitter_Hardware-rescue:AndersonPP-MRDT_Connectors-Voltage-Transmitter-schematic-rescue Conn1
U 2 1 5C01FE7F
P 1250 3100
F 0 "Conn1" H 1300 3050 60  0000 C CNN
F 1 "AndersonPP-MRDT_Connectors" H 1250 3400 60  0001 C CNN
F 2 "MRDT_Connectors:Anderson_2_Horizontal_Stacked" H 1100 2550 60  0001 C CNN
F 3 "" H 1100 2550 60  0001 C CNN
	2    1250 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1500 3650 1500
Wire Wire Line
	3650 2400 3350 2400
$Comp
L power:GND #PWR0103
U 1 1 5C199ED9
P 4500 2100
F 0 "#PWR0103" H 4500 1850 50  0001 C CNN
F 1 "GND" H 4505 1927 50  0000 C CNN
F 2 "" H 4500 2100 50  0001 C CNN
F 3 "" H 4500 2100 50  0001 C CNN
	1    4500 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2100 4400 2100
$Comp
L MRDT_Devices:OKI U1
U 1 1 5C19C2D6
P 1950 1300
F 0 "U1" H 2000 1250 60  0001 C CNN
F 1 "OKI" H 2150 1581 60  0000 C CNN
F 2 "MRDT_Devices:OKI_Horizontal" H 1750 1200 60  0001 C CNN
F 3 "" H 1750 1200 60  0001 C CNN
	1    1950 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1200 1750 1200
Wire Wire Line
	1300 1500 1700 1500
Wire Wire Line
	1700 1500 2150 1500
Connection ~ 1700 1500
$Comp
L Device:C C2
U 1 1 5C19CF07
P 2650 1350
F 0 "C2" H 2650 1450 50  0000 L CNN
F 1 "10uF" H 2650 1250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2688 1200 50  0001 C CNN
F 3 "~" H 2650 1350 50  0001 C CNN
	1    2650 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 1200 2650 1200
Wire Wire Line
	2650 1500 2150 1500
Connection ~ 2150 1500
Wire Notes Line
	450  450  450  3350
Wire Notes Line
	500  2050 3100 2050
Wire Notes Line
	450  2250 3100 2250
Wire Wire Line
	2650 1150 2650 1200
Connection ~ 2650 1200
Wire Wire Line
	1900 2600 1950 2600
$Comp
L power:GND #PWR0106
U 1 1 5C1A8175
P 2150 1500
F 0 "#PWR0106" H 2150 1250 50  0001 C CNN
F 1 "GND" H 2155 1327 50  0000 C CNN
F 2 "" H 2150 1500 50  0001 C CNN
F 3 "" H 2150 1500 50  0001 C CNN
	1    2150 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1400 1300 1500
$Comp
L power:+3.3V #PWR0107
U 1 1 5C930EF0
P 4500 2900
F 0 "#PWR0107" H 4500 2750 50  0001 C CNN
F 1 "+3.3V" V 4450 2850 50  0000 L CNN
F 2 "" H 4500 2900 50  0001 C CNN
F 3 "" H 4500 2900 50  0001 C CNN
	1    4500 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 2900 4500 2900
Wire Wire Line
	1950 2600 2050 2600
Connection ~ 1950 2600
NoConn ~ 3650 1600
NoConn ~ 3650 1700
NoConn ~ 3650 1800
NoConn ~ 3650 1900
NoConn ~ 3650 2000
NoConn ~ 3650 2100
NoConn ~ 3650 2200
NoConn ~ 3650 2300
NoConn ~ 4400 2200
NoConn ~ 4400 2000
NoConn ~ 4400 1900
NoConn ~ 4400 1800
NoConn ~ 4400 1700
NoConn ~ 4400 1600
NoConn ~ 4400 2300
NoConn ~ 4400 2400
NoConn ~ 4400 2500
NoConn ~ 4400 2600
NoConn ~ 4400 2700
NoConn ~ 4400 2800
NoConn ~ 3650 2900
NoConn ~ 3650 2800
NoConn ~ 3650 2700
NoConn ~ 3650 2600
$Comp
L Switch:SW_Push_SPDT SW1
U 1 1 5C938574
P 1400 1200
F 0 "SW1" H 1400 1485 50  0000 C CNN
F 1 "SW_Push_SPDT" H 1400 1394 50  0000 C CNN
F 2 "Button_Switch_THT:SW_CuK_OS102011MA1QN1_SPDT_Angled" H 1400 1200 50  0001 C CNN
F 3 "" H 1400 1200 50  0001 C CNN
	1    1400 1200
	-1   0    0    -1  
$EndComp
NoConn ~ 1200 1100
Wire Wire Line
	1050 1300 1200 1300
Wire Wire Line
	1050 1400 1300 1400
Wire Wire Line
	1600 1200 1700 1200
Connection ~ 1700 1200
$Comp
L power:+3.3V #PWR0108
U 1 1 5C939945
P 5500 1250
F 0 "#PWR0108" H 5500 1100 50  0001 C CNN
F 1 "+3.3V" H 5350 1400 50  0000 L CNN
F 2 "" H 5500 1250 50  0001 C CNN
F 3 "" H 5500 1250 50  0001 C CNN
	1    5500 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5C9399B3
P 5500 1400
F 0 "R3" V 5500 1400 50  0000 C CNN
F 1 "500" V 5395 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5500 1400 50  0001 C CNN
F 3 "~" H 5500 1400 50  0001 C CNN
	1    5500 1400
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5C939A07
P 5500 1900
F 0 "#PWR0109" H 5500 1650 50  0001 C CNN
F 1 "GND" H 5505 1727 50  0000 C CNN
F 2 "" H 5500 1900 50  0001 C CNN
F 3 "" H 5500 1900 50  0001 C CNN
	1    5500 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1250 5500 1300
Wire Wire Line
	5500 1500 5500 1550
Text GLabel 4450 1500 2    50   Output ~ 0
TX_IND
Wire Wire Line
	4400 1500 4450 1500
Text GLabel 5800 1250 1    50   Input ~ 0
TX_IND
$Comp
L Device:R_Small R4
U 1 1 5C93B6BD
P 5800 1400
F 0 "R4" V 5800 1400 50  0000 C CNN
F 1 "500" V 5695 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5800 1400 50  0001 C CNN
F 3 "~" H 5800 1400 50  0001 C CNN
	1    5800 1400
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5C93B6E5
P 5800 1900
F 0 "#PWR0110" H 5800 1650 50  0001 C CNN
F 1 "GND" H 5805 1727 50  0000 C CNN
F 2 "" H 5800 1900 50  0001 C CNN
F 3 "" H 5800 1900 50  0001 C CNN
	1    5800 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 1550 5800 1500
Wire Wire Line
	5800 1300 5800 1250
$Comp
L Device:LED D1
U 1 1 5C93C4DE
P 5500 1700
F 0 "D1" V 5538 1583 50  0000 R CNN
F 1 "LED" V 5447 1583 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5500 1700 50  0001 C CNN
F 3 "~" H 5500 1700 50  0001 C CNN
	1    5500 1700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5C93C569
P 5800 1700
F 0 "D2" V 5838 1583 50  0000 R CNN
F 1 "LED" V 5747 1583 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5800 1700 50  0001 C CNN
F 3 "~" H 5800 1700 50  0001 C CNN
	1    5800 1700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 1850 5500 1900
Wire Wire Line
	5800 1850 5800 1900
Text Notes 5400 2200 0    50   ~ 0
Green
Text Notes 5750 2200 0    50   ~ 0
Blue
Text Notes 5250 700  0    118  ~ 24
Indication\n
Wire Notes Line
	450  450  6450 450 
Wire Notes Line
	450  700  6450 700 
Text Notes 600  3500 0    50   ~ 0
Switched andersons so that \nthey properly mate with the \nandersons on the batt packs
Wire Notes Line
	500  3550 6450 3550
Wire Notes Line
	6450 450  6450 3550
Wire Notes Line
	5000 450  5000 3550
Wire Notes Line
	3100 450  3100 3550
$EndSCHEMATC

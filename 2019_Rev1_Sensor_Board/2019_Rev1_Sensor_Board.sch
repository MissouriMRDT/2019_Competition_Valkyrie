EESchema Schematic File Version 4
LIBS:2019_Rev1_Sensor_Board-cache
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
L Device:R R1
U 1 1 5BCB8D54
P 8500 5100
F 0 "R1" V 8400 5100 50  0000 C CNN
F 1 "500" V 8500 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8430 5100 50  0001 C CNN
F 3 "~" H 8500 5100 50  0001 C CNN
	1    8500 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 4900 8500 4950
Wire Wire Line
	8500 5250 8500 5350
$Comp
L Device:LED PWR1
U 1 1 5BCB8FDC
P 8500 5500
F 0 "PWR1" H 8500 5600 50  0000 C CNN
F 1 "LED" H 8500 5400 50  0000 C CNN
F 2 "Diode_SMD:D_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8500 5500 50  0001 C CNN
F 3 "~" H 8500 5500 50  0001 C CNN
	1    8500 5500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8500 5650 8500 5750
$Comp
L power:GND #PWR0101
U 1 1 5BCB97F5
P 2700 3300
F 0 "#PWR0101" H 2700 3050 50  0001 C CNN
F 1 "GND" H 2705 3127 50  0000 C CNN
F 2 "" H 2700 3300 50  0001 C CNN
F 3 "" H 2700 3300 50  0001 C CNN
	1    2700 3300
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5BCB925B
P 8500 5750
F 0 "#PWR0102" H 8500 5500 50  0001 C CNN
F 1 "GND" V 8505 5622 50  0000 R CNN
F 2 "" H 8500 5750 50  0001 C CNN
F 3 "" H 8500 5750 50  0001 C CNN
	1    8500 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5BCBE9F9
P 7700 3950
F 0 "#PWR0103" H 7700 3700 50  0001 C CNN
F 1 "GND" H 7705 3777 50  0000 C CNN
F 2 "" H 7700 3950 50  0001 C CNN
F 3 "" H 7700 3950 50  0001 C CNN
	1    7700 3950
	-1   0    0    1   
$EndComp
$Comp
L MRDT_Connectors:AndersonPP Conn1
U 1 1 5BCC6BDC
P 850 1950
F 0 "Conn1" H 1000 1900 60  0000 C CNN
F 1 "AndersonPP" H 900 2550 60  0001 C CNN
F 2 "MRDT_Connectors:Anderson_2_Horisontal_Side_by_Side" H 700 1400 60  0001 C CNN
F 3 "" H 700 1400 60  0001 C CNN
	1    850  1950
	1    0    0    -1  
$EndComp
$Comp
L MRDT_Connectors:AndersonPP Conn1
U 2 1 5BCC6C75
P 850 1650
F 0 "Conn1" H 1000 1200 60  0000 C CNN
F 1 "AndersonPP" H 300 1750 60  0001 C CNN
F 2 "MRDT_Connectors:Anderson_2_Horisontal_Side_by_Side" H 700 1100 60  0001 C CNN
F 3 "" H 700 1100 60  0001 C CNN
	2    850  1650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0108
U 1 1 5BCCC2FF
P 4850 3900
F 0 "#PWR0108" H 4850 3750 50  0001 C CNN
F 1 "+3.3V" H 4865 4073 50  0000 C CNN
F 2 "" H 4850 3900 50  0001 C CNN
F 3 "" H 4850 3900 50  0001 C CNN
	1    4850 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3900 4850 3950
Wire Wire Line
	4850 3950 4900 3950
$Comp
L MRDT_Connectors:Molex_SL_04 Conn2
U 1 1 5BCCD748
P 10350 1650
F 0 "Conn2" H 10350 1600 60  0000 L CNN
F 1 "Soil Temp/Moist" H 10200 2150 60  0000 L CNN
F 2 "MRDT_Connectors:MOLEX_SL_04_Horizontal" H 10350 1650 60  0001 C CNN
F 3 "" H 10350 1650 60  0001 C CNN
	1    10350 1650
	1    0    0    -1  
$EndComp
Text GLabel 10100 1500 0    50   Input ~ 0
Soil_Sck
Text GLabel 9900 1400 0    50   Output ~ 0
Soil_Data
$Comp
L power:GND #PWR0109
U 1 1 5BCCDA66
P 10100 1650
F 0 "#PWR0109" H 10100 1400 50  0001 C CNN
F 1 "GND" H 10105 1477 50  0000 C CNN
F 2 "" H 10100 1650 50  0001 C CNN
F 3 "" H 10100 1650 50  0001 C CNN
	1    10100 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 1600 10100 1600
Wire Wire Line
	10100 1600 10100 1650
$Comp
L MRDT_Connectors:Molex_SL_03 Conn3
U 1 1 5BCCE52D
P 10350 2750
F 0 "Conn3" H 10350 2700 60  0000 L CNN
F 1 "Air Temp/Humid" H 10200 3150 60  0000 L CNN
F 2 "MRDT_Connectors:MOLEX_SL_03_Horizontal" H 10350 2750 60  0001 C CNN
F 3 "" H 10350 2750 60  0001 C CNN
	1    10350 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5BCCE6BD
P 10100 2750
F 0 "#PWR0110" H 10100 2500 50  0001 C CNN
F 1 "GND" H 10105 2577 50  0000 C CNN
F 2 "" H 10100 2750 50  0001 C CNN
F 3 "" H 10100 2750 50  0001 C CNN
	1    10100 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 2700 10100 2700
Wire Wire Line
	10100 2700 10100 2750
$Comp
L power:+3.3V #PWR0111
U 1 1 5BCCE9E7
P 10100 2300
F 0 "#PWR0111" H 10100 2150 50  0001 C CNN
F 1 "+3.3V" H 10115 2473 50  0000 C CNN
F 2 "" H 10100 2300 50  0001 C CNN
F 3 "" H 10100 2300 50  0001 C CNN
	1    10100 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 2500 10150 2500
Text GLabel 9850 2600 0    50   Output ~ 0
Atm_Dout
$Comp
L Device:R R3
U 1 1 5BCCF0C3
P 9950 2450
F 0 "R3" V 9850 2400 50  0000 L CNN
F 1 "10K" V 9950 2350 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9880 2450 50  0001 C CNN
F 3 "~" H 9950 2450 50  0001 C CNN
	1    9950 2450
	1    0    0    -1  
$EndComp
$Comp
L MRDT_Connectors:Molex_SL_04 Conn4
U 1 1 5BCD074B
P 10350 3700
F 0 "Conn4" H 10477 3958 60  0000 L CNN
F 1 "Methane_Sensor" H 10300 3550 60  0000 L CNN
F 2 "MRDT_Connectors:MOLEX_SL_04_Horizontal" H 10350 3700 60  0001 C CNN
F 3 "" H 10350 3700 60  0001 C CNN
	1    10350 3700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0112
U 1 1 5BCD0812
P 10100 3300
F 0 "#PWR0112" H 10100 3150 50  0001 C CNN
F 1 "+5V" H 10200 3350 50  0000 C CNN
F 2 "" H 10100 3300 50  0001 C CNN
F 3 "" H 10100 3300 50  0001 C CNN
	1    10100 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 3300 10100 3350
Wire Wire Line
	10100 3350 10150 3350
$Comp
L power:GND #PWR0113
U 1 1 5BCD0D30
P 10100 3950
F 0 "#PWR0113" H 10100 3700 50  0001 C CNN
F 1 "GND" H 10105 3777 50  0000 C CNN
F 2 "" H 10100 3950 50  0001 C CNN
F 3 "" H 10100 3950 50  0001 C CNN
	1    10100 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 3650 10100 3650
Text GLabel 9950 3550 0    50   Output ~ 0
Methane_Vout
$Comp
L power:+3.3V #PWR0114
U 1 1 5BCD2B82
P 10150 1100
F 0 "#PWR0114" H 10150 950 50  0001 C CNN
F 1 "+3.3V" H 10165 1273 50  0000 C CNN
F 2 "" H 10150 1100 50  0001 C CNN
F 3 "" H 10150 1100 50  0001 C CNN
	1    10150 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5BCD2B89
P 10000 1250
F 0 "R2" V 9900 1200 50  0000 L CNN
F 1 "10K" V 10000 1150 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9930 1250 50  0001 C CNN
F 3 "~" H 10000 1250 50  0001 C CNN
	1    10000 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 1400 10000 1400
Text GLabel 6700 4150 0    50   Output ~ 0
Soil_Sck
Text GLabel 7700 4550 2    50   Input ~ 0
Soil_Data
$Comp
L MRDT_Shields:TM4C129E_Launchpad U1
U 1 1 5BCD8F06
P 5100 4900
F 0 "U1" H 5401 5445 60  0001 L CNN
F 1 "Tive Header" H 5401 5392 60  0001 L CNN
F 2 "MRDT_Shields:TM4C129E_Launchpad_FULL" H 5100 4900 60  0001 C CNN
F 3 "" H 5100 4900 60  0001 C CNN
	1    5100 4900
	1    0    0    -1  
$EndComp
$Comp
L MRDT_Shields:TM4C129E_Launchpad U1
U 2 1 5BCD8F75
P 5600 4900
F 0 "U1" H 5632 6177 60  0001 C CNN
F 1 "Tive Header" H 5632 6071 60  0001 C CNN
F 2 "MRDT_Shields:TM4C129E_Launchpad_FULL" H 5600 4900 60  0001 C CNN
F 3 "" H 5600 4900 60  0001 C CNN
	2    5600 4900
	-1   0    0    -1  
$EndComp
$Comp
L MRDT_Shields:TM4C129E_Launchpad U1
U 3 1 5BCD8FC5
P 6950 4900
F 0 "U1" H 7255 5445 60  0001 L CNN
F 1 "Tive Header" H 7255 5392 60  0001 L CNN
F 2 "MRDT_Shields:TM4C129E_Launchpad_FULL" H 6950 4900 60  0001 C CNN
F 3 "" H 6950 4900 60  0001 C CNN
	3    6950 4900
	1    0    0    -1  
$EndComp
$Comp
L MRDT_Shields:TM4C129E_Launchpad U1
U 4 1 5BCD902E
P 7450 4900
F 0 "U1" H 7482 6071 60  0001 C CNN
F 1 "Tive Header" H 7482 6071 60  0001 C CNN
F 2 "MRDT_Shields:TM4C129E_Launchpad_FULL" H 7450 4900 60  0001 C CNN
F 3 "" H 7450 4900 60  0001 C CNN
	4    7450 4900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6750 4150 6700 4150
Wire Wire Line
	7650 4550 7700 4550
Text GLabel 7700 4650 2    50   Input ~ 0
Atm_Dout
Wire Wire Line
	7650 4650 7700 4650
Wire Notes Line
	8300 4400 11200 4400
Text Notes 8550 850  0    118  ~ 24
Sensors
Wire Notes Line
	4100 3350 8300 3350
Text Notes 600  1000 0    118  ~ 24
Power 
Text Notes 9100 4000 0    50   ~ 0
3.3v for vin\nanalog read for vout\n
$Comp
L MRDT_Shields:TM4C129E_Launchpad U1
U 5 1 5BCDD5F6
P 5100 6450
F 0 "U1" H 5100 6350 60  0000 L CNN
F 1 "Tive Header" H 4800 5950 60  0001 L CNN
F 2 "MRDT_Shields:TM4C129E_Launchpad_FULL" H 5100 6450 60  0001 C CNN
F 3 "" H 5100 6450 60  0001 C CNN
	5    5100 6450
	1    0    0    -1  
$EndComp
$Comp
L MRDT_Shields:TM4C129E_Launchpad U1
U 6 1 5BCDF51F
P 5600 6450
F 0 "U1" H 5632 7621 60  0000 C CNN
F 1 "Tive Header" H 6100 7700 60  0001 C CNN
F 2 "MRDT_Shields:TM4C129E_Launchpad_FULL" H 5600 6450 60  0001 C CNN
F 3 "" H 5600 6450 60  0001 C CNN
	6    5600 6450
	-1   0    0    -1  
$EndComp
$Comp
L MRDT_Shields:TM4C129E_Launchpad U1
U 7 1 5BCE1609
P 6950 6450
F 0 "U1" H 7255 7048 60  0001 L CNN
F 1 "Tive Header" H 6750 6050 60  0001 L CNN
F 2 "MRDT_Shields:TM4C129E_Launchpad_FULL" H 6950 6450 60  0001 C CNN
F 3 "" H 6950 6450 60  0001 C CNN
	7    6950 6450
	1    0    0    -1  
$EndComp
$Comp
L MRDT_Shields:TM4C129E_Launchpad U1
U 8 1 5BCE1668
P 7450 6450
F 0 "U1" H 7482 7621 60  0000 C CNN
F 1 "Tive Header" H 7950 7750 60  0001 C CNN
F 2 "MRDT_Shields:TM4C129E_Launchpad_FULL" H 7450 6450 60  0001 C CNN
F 3 "" H 7450 6450 60  0001 C CNN
	8    7450 6450
	-1   0    0    -1  
$EndComp
Text Notes 4200 800  0    118  ~ 24
Spectrometer
$Comp
L power:GND #PWR0115
U 1 1 5BCE6489
P 5900 5600
F 0 "#PWR0115" H 5900 5350 50  0001 C CNN
F 1 "GND" H 5905 5427 50  0000 C CNN
F 2 "" H 5900 5600 50  0001 C CNN
F 3 "" H 5900 5600 50  0001 C CNN
	1    5900 5600
	1    0    0    -1  
$EndComp
Text GLabel 6950 1500 0    50   Input ~ 0
TOGGLE
Text GLabel 7700 5700 2    50   Input ~ 0
TOGGLE
Text Notes 4500 1150 0    79   ~ 0
Charged Coupled Device
Text Notes 6850 1150 0    79   ~ 0
UV LED
Wire Notes Line
	4100 500  4100 7800
Text GLabel 4850 4050 0    50   Input ~ 0
Methane_Vout
Wire Wire Line
	4850 4050 4900 4050
Text GLabel 5050 1600 0    50   Input ~ 0
Master_CLOCK
Text GLabel 5050 1700 0    50   Input ~ 0
ICG
Text GLabel 5050 1800 0    50   Input ~ 0
Shift_Gate
$Comp
L power:+3.3V #PWR0116
U 1 1 5BCFBAC2
P 5050 1450
F 0 "#PWR0116" H 5050 1300 50  0001 C CNN
F 1 "+3.3V" H 5065 1623 50  0000 C CNN
F 2 "" H 5050 1450 50  0001 C CNN
F 3 "" H 5050 1450 50  0001 C CNN
	1    5050 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5BCFBBAE
P 5050 1950
F 0 "#PWR0117" H 5050 1700 50  0001 C CNN
F 1 "GND" H 5055 1777 50  0000 C CNN
F 2 "" H 5050 1950 50  0001 C CNN
F 3 "" H 5050 1950 50  0001 C CNN
	1    5050 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5BCFF4E1
P 6950 1650
F 0 "#PWR0118" H 6950 1400 50  0001 C CNN
F 1 "GND" H 6955 1477 50  0000 C CNN
F 2 "" H 6950 1650 50  0001 C CNN
F 3 "" H 6950 1650 50  0001 C CNN
	1    6950 1650
	1    0    0    -1  
$EndComp
Text GLabel 4850 6100 0    50   Input ~ 0
Master_CLOCK
Wire Wire Line
	4850 6100 4900 6100
Text GLabel 6700 5500 0    50   Input ~ 0
ICG
Text GLabel 6700 6100 0    50   Input ~ 0
Shift_Gate
Text GLabel 7700 6300 2    50   Input ~ 0
CS
Text GLabel 7700 6000 2    50   Input ~ 0
SDATA
Text GLabel 7700 6100 2    50   Input ~ 0
SCLK
$Comp
L MRDT_Connectors:Molex_SL_02 Conn6
U 1 1 5BD0C76C
P 7200 1650
F 0 "Conn6" H 7328 1808 60  0000 L CNN
F 1 "UV_LED" H 7328 1702 60  0000 L CNN
F 2 "MRDT_Connectors:MOLEX_SL_02_Horizontal" H 7200 1550 60  0001 C CNN
F 3 "" H 7200 1550 60  0001 C CNN
	1    7200 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5BD20DCD
P 10000 3750
F 0 "R4" V 9900 3700 50  0000 L CNN
F 1 "22K" V 10000 3650 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9930 3750 50  0001 C CNN
F 3 "~" H 10000 3750 50  0001 C CNN
	1    10000 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 3650 10100 3900
Connection ~ 10100 3900
Wire Wire Line
	10100 3900 10100 3950
$Comp
L power:+3.3V #PWR0119
U 1 1 5BD3147C
P 10000 3300
F 0 "#PWR0119" H 10000 3150 50  0001 C CNN
F 1 "+3.3V" H 9850 3350 50  0000 C CNN
F 2 "" H 10000 3300 50  0001 C CNN
F 3 "" H 10000 3300 50  0001 C CNN
	1    10000 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 3450 10000 3300
$Comp
L power:GND #PWR0122
U 1 1 5BDE22BA
P 7800 5500
F 0 "#PWR0122" H 7800 5250 50  0001 C CNN
F 1 "GND" H 7805 5327 50  0000 C CNN
F 2 "" H 7800 5500 50  0001 C CNN
F 3 "" H 7800 5500 50  0001 C CNN
	1    7800 5500
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Schottky D1
U 1 1 5BE495C1
P 2250 1250
F 0 "D1" H 2250 1350 50  0000 C CNN
F 1 "D_Schottky" H 2250 1150 50  0000 C CNN
F 2 "Diode_SMD:D_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2250 1250 50  0001 C CNN
F 3 "~" H 2250 1250 50  0001 C CNN
	1    2250 1250
	1    0    0    -1  
$EndComp
$Comp
L pspice:INDUCTOR H1
U 1 1 5BE5EBE3
P 2950 1100
F 0 "H1" H 2950 1200 50  0000 C CNN
F 1 "47u" H 2950 1050 50  0000 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2950 1100 50  0001 C CNN
F 3 "" H 2950 1100 50  0001 C CNN
	1    2950 1100
	1    0    0    -1  
$EndComp
Connection ~ 2700 1550
Wire Wire Line
	3200 1100 3300 1100
Wire Wire Line
	3300 1550 2700 1550
$Comp
L power:+3.3V #PWR01
U 1 1 5BE81B23
P 3400 1100
F 0 "#PWR01" H 3400 950 50  0001 C CNN
F 1 "+3.3V" H 3400 1300 50  0000 C CNN
F 2 "" H 3400 1100 50  0001 C CNN
F 3 "" H 3400 1100 50  0001 C CNN
	1    3400 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1650 2700 1550
Connection ~ 2700 1650
Wire Wire Line
	2700 1750 2700 1650
Connection ~ 2700 1750
Wire Wire Line
	2700 1850 2700 1750
Connection ~ 2700 1850
$Comp
L MRDT_ICs:AP1059 U2
U 1 1 5BDE791C
P 2050 1900
F 0 "U2" H 2100 1800 60  0000 C CNN
F 1 "AP1059" H 2200 2350 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 1800 1800 60  0001 C CNN
F 3 "" H 1800 1800 60  0001 C CNN
	1    2050 1900
	1    0    0    -1  
$EndComp
$Comp
L MRDT_ICs:AP1059 U4
U 1 1 5BE9B5F0
P 2050 3150
F 0 "U4" H 2100 3050 60  0000 C CNN
F 1 "AP1059" H 1300 3650 60  0001 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 1800 3050 60  0001 C CNN
F 3 "" H 1800 3050 60  0001 C CNN
	1    2050 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 2800 2700 2900
Connection ~ 2700 2800
Connection ~ 2700 2900
Wire Wire Line
	2700 2900 2700 3000
Connection ~ 2700 3000
Wire Wire Line
	2700 3000 2700 3100
Connection ~ 2700 3100
Wire Wire Line
	2700 3100 2700 3200
Connection ~ 2700 3200
Wire Wire Line
	2700 3200 2700 3300
$Comp
L Device:D_Schottky D2
U 1 1 5BEAF8B9
P 2200 2550
F 0 "D2" H 2200 2650 50  0000 C CNN
F 1 "D_Schottky" H 2200 2450 50  0000 C CNN
F 2 "Diode_SMD:D_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2200 2550 50  0001 C CNN
F 3 "~" H 2200 2550 50  0001 C CNN
	1    2200 2550
	1    0    0    -1  
$EndComp
$Comp
L pspice:INDUCTOR H2
U 1 1 5BEAF924
P 3000 2400
F 0 "H2" H 3000 2500 50  0000 C CNN
F 1 "47u" H 3000 2350 50  0000 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3000 2400 50  0001 C CNN
F 3 "" H 3000 2400 50  0001 C CNN
	1    3000 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2550 2700 2550
Wire Wire Line
	1750 2900 1850 2900
Wire Wire Line
	3350 2900 2700 2900
Wire Wire Line
	1850 3000 1700 3000
Wire Wire Line
	1700 2250 3350 2250
$Comp
L power:+5V #PWR02
U 1 1 5BED3911
P 3450 2400
F 0 "#PWR02" H 3450 2250 50  0001 C CNN
F 1 "+5V" H 3465 2573 50  0000 C CNN
F 2 "" H 3450 2400 50  0001 C CNN
F 3 "" H 3450 2400 50  0001 C CNN
	1    3450 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 2550 2050 2550
Wire Wire Line
	1750 2400 2750 2400
Connection ~ 1750 2550
Wire Wire Line
	1750 2550 1750 2900
Connection ~ 2700 2550
Wire Wire Line
	2700 2550 2700 2800
Wire Wire Line
	3250 2400 3350 2400
$Comp
L Device:C_Small C3
U 1 1 5BF3ACAB
P 3300 1250
F 0 "C3" H 3350 1150 50  0000 L CNN
F 1 "10u" H 3150 1150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3300 1250 50  0001 C CNN
F 3 "~" H 3300 1250 50  0001 C CNN
	1    3300 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1350 3300 1550
$Comp
L Device:C_Small C4
U 1 1 5BF44706
P 3350 2750
F 0 "C4" H 3200 2800 50  0000 L CNN
F 1 "10u" H 3200 2700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3350 2750 50  0001 C CNN
F 3 "~" H 3350 2750 50  0001 C CNN
	1    3350 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 2850 3350 2900
$Comp
L Device:C_Small C2
U 1 1 5BF4E0B2
P 1550 2950
F 0 "C2" H 1350 3000 50  0000 L CNN
F 1 "10u" H 1350 2900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1550 2950 50  0001 C CNN
F 3 "~" H 1550 2950 50  0001 C CNN
	1    1550 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5BF4E13F
P 1600 1700
F 0 "C1" H 1400 1750 50  0000 L CNN
F 1 "10u" H 1400 1650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1600 1700 50  0001 C CNN
F 3 "~" H 1600 1700 50  0001 C CNN
	1    1600 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2850 1550 2800
Wire Wire Line
	1550 3050 1550 3100
$Comp
L MRDT_Connectors:Molex_SL_08 Conn7
U 1 1 5BECC073
P 5300 3200
F 0 "Conn7" H 5427 3658 60  0000 L CNN
F 1 "Molex_SL_08" H 5427 3552 60  0000 L CNN
F 2 "MRDT_Connectors:MOLEX_SL_08_Horizontal" H 5300 3500 60  0001 C CNN
F 3 "" H 5300 3500 60  0001 C CNN
	1    5300 3200
	1    0    0    -1  
$EndComp
$Comp
L MRDT_Connectors:Molex_SL_08 Conn8
U 1 1 5BECC197
P 7200 3200
F 0 "Conn8" H 7327 3658 60  0000 L CNN
F 1 "Molex_SL_08" H 7327 3552 60  0000 L CNN
F 2 "MRDT_Connectors:MOLEX_SL_08_Horizontal" H 7200 3500 60  0001 C CNN
F 3 "" H 7200 3500 60  0001 C CNN
	1    7200 3200
	1    0    0    -1  
$EndComp
Text Notes 4550 2300 0    79   ~ 0
CCD Ouput Byte1
Text Notes 6400 2300 0    79   ~ 0
CCD Output Byte2
Text GLabel 5050 2450 0    50   Input ~ 0
Bit7
Text GLabel 5050 2550 0    50   Input ~ 0
Bit8
Text GLabel 5050 2650 0    50   Input ~ 0
Bit9
Text GLabel 5050 2750 0    50   Input ~ 0
Bit10
Text GLabel 5050 2850 0    50   Input ~ 0
Bit11
Text GLabel 5050 2950 0    50   Input ~ 0
Bit12
Text GLabel 5050 3050 0    50   Input ~ 0
Bit13
Text GLabel 5050 3150 0    50   Input ~ 0
Bit14
Text GLabel 6950 2450 0    50   Input ~ 0
Bit0
Text GLabel 6950 2550 0    50   Input ~ 0
Bit1
Text GLabel 6950 2650 0    50   Input ~ 0
Bit2
Text GLabel 6950 2750 0    50   Input ~ 0
Bit3
Text GLabel 6950 2850 0    50   Input ~ 0
Bit4
Text GLabel 6950 2950 0    50   Input ~ 0
Bit5
Text GLabel 6950 3050 0    50   Input ~ 0
Bit6
Text GLabel 6950 3150 0    50   Input ~ 0
AnalogIn
Text GLabel 5850 5900 2    50   Input ~ 0
Bit7
Text GLabel 5850 6000 2    50   Input ~ 0
Bit8
Text GLabel 5850 6100 2    50   Input ~ 0
Bit9
Text GLabel 5850 6200 2    50   Input ~ 0
Bit10
Text GLabel 6700 5600 0    50   Input ~ 0
Bit11
Text GLabel 6700 5700 0    50   Input ~ 0
Bit12
Text GLabel 6700 6300 0    50   Input ~ 0
Bit13
Text GLabel 6700 6400 0    50   Input ~ 0
Bit14
Text GLabel 6700 5800 0    50   Input ~ 0
Bit0
Text GLabel 6700 5900 0    50   Input ~ 0
Bit1
Text GLabel 6700 6000 0    50   Input ~ 0
Bit2
Text GLabel 7700 4050 2    50   Input ~ 0
Bit3
Text GLabel 5850 4750 2    50   Input ~ 0
Bit4
Text GLabel 5850 4850 2    50   Input ~ 0
Bit5
Text GLabel 7700 6400 2    50   Input ~ 0
Bit6
Text GLabel 7700 5800 2    50   Input ~ 0
AnalogIn
$Comp
L MRDT_Connectors:Molex_SL_05 Conn5
U 1 1 5BF11252
P 5300 1950
F 0 "Conn5" H 5427 2258 60  0000 L CNN
F 1 "Molex_SL_05" H 5427 2152 60  0000 L CNN
F 2 "MRDT_Connectors:MOLEX_SL_05_Horizontal" H 5300 1950 60  0001 C CNN
F 3 "" H 5300 1950 60  0001 C CNN
	1    5300 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1500 5100 1500
Wire Wire Line
	5050 1500 5050 1450
Wire Wire Line
	5050 1600 5100 1600
Wire Wire Line
	5050 1700 5100 1700
Wire Wire Line
	5050 1800 5100 1800
Wire Wire Line
	5050 1950 5050 1900
Wire Wire Line
	5050 1900 5100 1900
Wire Wire Line
	5050 2450 5100 2450
Wire Wire Line
	5050 2550 5100 2550
Wire Wire Line
	5050 2650 5100 2650
Wire Wire Line
	5050 2750 5100 2750
Wire Wire Line
	5050 2850 5100 2850
Wire Wire Line
	5050 2950 5100 2950
Wire Wire Line
	5050 3050 5100 3050
Wire Wire Line
	5050 3150 5100 3150
Wire Wire Line
	6950 2450 7000 2450
Wire Wire Line
	6950 2550 7000 2550
Wire Wire Line
	6950 2650 7000 2650
Wire Wire Line
	6950 2750 7000 2750
Wire Wire Line
	6950 2850 7000 2850
Wire Wire Line
	6950 2950 7000 2950
Wire Wire Line
	6950 3050 7000 3050
Wire Wire Line
	6950 3150 7000 3150
$Comp
L power:GND #PWR0106
U 1 1 5BCCB5B3
P 5900 4050
F 0 "#PWR0106" H 5900 3800 50  0001 C CNN
F 1 "GND" H 5905 3877 50  0000 C CNN
F 2 "" H 5900 4050 50  0001 C CNN
F 3 "" H 5900 4050 50  0001 C CNN
	1    5900 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4050 5900 4050
Wire Wire Line
	5800 5600 5900 5600
Wire Wire Line
	5850 4750 5800 4750
Wire Wire Line
	5800 4850 5850 4850
Wire Wire Line
	7700 3950 7650 3950
Wire Wire Line
	7700 4050 7650 4050
Wire Wire Line
	7650 5500 7800 5500
Wire Wire Line
	7700 5800 7650 5800
Wire Wire Line
	7700 6000 7650 6000
Wire Wire Line
	7700 6100 7650 6100
Wire Wire Line
	7650 6300 7700 6300
Wire Wire Line
	7650 6400 7700 6400
Wire Wire Line
	6700 5500 6750 5500
Wire Wire Line
	6700 5600 6750 5600
Wire Wire Line
	6700 5700 6750 5700
Wire Wire Line
	6700 5800 6750 5800
Wire Wire Line
	6700 5900 6750 5900
Wire Wire Line
	6700 6000 6750 6000
Wire Wire Line
	6700 6100 6750 6100
Wire Wire Line
	6750 6300 6700 6300
Wire Wire Line
	6750 6400 6700 6400
Wire Wire Line
	5850 5900 5800 5900
Wire Wire Line
	5850 6000 5800 6000
Wire Wire Line
	5850 6100 5800 6100
Wire Wire Line
	5800 6200 5850 6200
Wire Wire Line
	7700 5700 7650 5700
Wire Wire Line
	10000 3450 10150 3450
Wire Wire Line
	10000 3900 10100 3900
Wire Wire Line
	9950 3550 10000 3550
Wire Wire Line
	10000 3600 10000 3550
Connection ~ 10000 3550
Wire Wire Line
	10000 3550 10150 3550
Wire Wire Line
	10100 2300 10100 2500
Connection ~ 10100 2300
Wire Wire Line
	9950 2300 10100 2300
Wire Wire Line
	9950 2600 10150 2600
Wire Wire Line
	9850 2600 9950 2600
Connection ~ 9950 2600
Wire Wire Line
	10000 1100 10150 1100
Wire Wire Line
	10150 1300 10150 1100
Connection ~ 10150 1100
Wire Wire Line
	9900 1400 10000 1400
Connection ~ 10000 1400
Wire Wire Line
	10100 1500 10150 1500
Wire Wire Line
	6950 1500 7000 1500
Wire Wire Line
	7000 1600 6950 1600
Wire Wire Line
	6950 1600 6950 1650
Connection ~ 3300 1100
Wire Wire Line
	3300 1100 3300 1150
Wire Wire Line
	3300 1100 3400 1100
Wire Wire Line
	1750 1750 1750 950 
Wire Wire Line
	3450 2400 3350 2400
Wire Wire Line
	1750 2400 1750 2550
Connection ~ 3350 2400
Wire Wire Line
	3350 2400 3350 2650
Wire Wire Line
	1700 2250 1700 3000
Wire Wire Line
	3350 2250 3350 2400
Wire Wire Line
	1800 1650 1850 1650
Wire Wire Line
	1800 1100 2700 1100
Wire Wire Line
	1750 950  3300 950 
Wire Wire Line
	1750 1750 1850 1750
Wire Wire Line
	3300 950  3300 1100
Wire Wire Line
	1600 1600 1600 1550
Connection ~ 1600 1550
Wire Wire Line
	1600 1550 1850 1550
Wire Wire Line
	1600 1800 1600 1850
Connection ~ 1600 1850
Wire Wire Line
	1600 1850 1850 1850
Wire Wire Line
	2700 1850 2700 1950
Wire Wire Line
	1600 1850 1600 1950
Wire Wire Line
	1600 1950 2700 1950
Connection ~ 2700 1950
Wire Wire Line
	2700 1950 2700 2550
Connection ~ 1550 2800
Wire Wire Line
	1550 2800 1850 2800
Connection ~ 1550 3100
Wire Wire Line
	1550 3100 1850 3100
Wire Wire Line
	1550 3100 1550 3200
Wire Wire Line
	1550 3200 2700 3200
Wire Wire Line
	1350 2800 1350 1550
Wire Wire Line
	1350 2800 1550 2800
Wire Wire Line
	1350 1550 1600 1550
Wire Wire Line
	1250 1550 1350 1550
Connection ~ 1350 1550
Wire Wire Line
	1250 1850 1600 1850
Text Notes 8550 1150 0    50   ~ 0
SHT10 Sensor
Text Notes 8550 2450 0    50   ~ 0
AM2302 Sensor
Text Notes 8550 3400 0    50   ~ 0
MQ-4 Sensor
Wire Notes Line
	8300 6500 11200 6500
Wire Notes Line
	11200 6500 11200 500 
Wire Notes Line
	8300 500  8300 6500
Text Notes 8300 4600 0    118  ~ 24
LEDS 
Text Notes 8350 6150 0    59   ~ 0
Power LED
Wire Notes Line
	500  500  500  7800
Wire Notes Line
	500  7800 4100 7800
Wire Notes Line
	500  500  11200 500 
Wire Wire Line
	1800 1100 1800 1250
Wire Wire Line
	2100 1250 1800 1250
Connection ~ 1800 1250
Wire Wire Line
	1800 1250 1800 1650
Wire Wire Line
	2400 1250 2700 1250
Wire Wire Line
	2700 1250 2700 1550
NoConn ~ 5800 3950
NoConn ~ 5800 5500
NoConn ~ 7650 4350
NoConn ~ 7650 5900
Text Notes 4200 3600 0    118  ~ 24
Tiva
$Comp
L power:+3.3V #PWR?
U 1 1 5BFEB1B6
P 8500 4900
F 0 "#PWR?" H 8500 4750 50  0001 C CNN
F 1 "+3.3V" H 8515 5073 50  0000 C CNN
F 2 "" H 8500 4900 50  0001 C CNN
F 3 "" H 8500 4900 50  0001 C CNN
	1    8500 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5BFEB530
P 9000 5100
F 0 "R?" V 8900 5100 50  0000 C CNN
F 1 "500" V 9000 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8930 5100 50  0001 C CNN
F 3 "~" H 9000 5100 50  0001 C CNN
	1    9000 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 4900 9000 4950
Wire Wire Line
	9000 5250 9000 5350
$Comp
L Device:LED PWR?
U 1 1 5BFEB539
P 9000 5500
F 0 "PWR?" H 9000 5600 50  0000 C CNN
F 1 "LED" H 9000 5400 50  0000 C CNN
F 2 "Diode_SMD:D_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9000 5500 50  0001 C CNN
F 3 "~" H 9000 5500 50  0001 C CNN
	1    9000 5500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9000 5650 9000 5750
$Comp
L power:GND #PWR?
U 1 1 5BFEB541
P 9000 5750
F 0 "#PWR?" H 9000 5500 50  0001 C CNN
F 1 "GND" V 9005 5622 50  0000 R CNN
F 2 "" H 9000 5750 50  0001 C CNN
F 3 "" H 9000 5750 50  0001 C CNN
	1    9000 5750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5BFEB547
P 9000 4900
F 0 "#PWR?" H 9000 4750 50  0001 C CNN
F 1 "+3.3V" H 9015 5073 50  0000 C CNN
F 2 "" H 9000 4900 50  0001 C CNN
F 3 "" H 9000 4900 50  0001 C CNN
	1    9000 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5BFF2418
P 9500 5100
F 0 "R?" V 9400 5100 50  0000 C CNN
F 1 "500" V 9500 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9430 5100 50  0001 C CNN
F 3 "~" H 9500 5100 50  0001 C CNN
	1    9500 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 4900 9500 4950
Wire Wire Line
	9500 5250 9500 5350
$Comp
L Device:LED PWR?
U 1 1 5BFF2421
P 9500 5500
F 0 "PWR?" H 9500 5600 50  0000 C CNN
F 1 "LED" H 9500 5400 50  0000 C CNN
F 2 "Diode_SMD:D_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9500 5500 50  0001 C CNN
F 3 "~" H 9500 5500 50  0001 C CNN
	1    9500 5500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9500 5650 9500 5750
$Comp
L power:GND #PWR?
U 1 1 5BFF2429
P 9500 5750
F 0 "#PWR?" H 9500 5500 50  0001 C CNN
F 1 "GND" V 9505 5622 50  0000 R CNN
F 2 "" H 9500 5750 50  0001 C CNN
F 3 "" H 9500 5750 50  0001 C CNN
	1    9500 5750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5BFF242F
P 9500 4900
F 0 "#PWR?" H 9500 4750 50  0001 C CNN
F 1 "+3.3V" H 9515 5073 50  0000 C CNN
F 2 "" H 9500 4900 50  0001 C CNN
F 3 "" H 9500 4900 50  0001 C CNN
	1    9500 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5BFF94F9
P 10000 5100
F 0 "R?" V 9900 5100 50  0000 C CNN
F 1 "500" V 10000 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9930 5100 50  0001 C CNN
F 3 "~" H 10000 5100 50  0001 C CNN
	1    10000 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 4900 10000 4950
Wire Wire Line
	10000 5250 10000 5350
$Comp
L Device:LED PWR?
U 1 1 5BFF9502
P 10000 5500
F 0 "PWR?" H 10000 5600 50  0000 C CNN
F 1 "LED" H 10000 5400 50  0000 C CNN
F 2 "Diode_SMD:D_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10000 5500 50  0001 C CNN
F 3 "~" H 10000 5500 50  0001 C CNN
	1    10000 5500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10000 5650 10000 5750
$Comp
L power:GND #PWR?
U 1 1 5BFF950A
P 10000 5750
F 0 "#PWR?" H 10000 5500 50  0001 C CNN
F 1 "GND" V 10005 5622 50  0000 R CNN
F 2 "" H 10000 5750 50  0001 C CNN
F 3 "" H 10000 5750 50  0001 C CNN
	1    10000 5750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5BFF9510
P 10000 4900
F 0 "#PWR?" H 10000 4750 50  0001 C CNN
F 1 "+3.3V" H 10015 5073 50  0000 C CNN
F 2 "" H 10000 4900 50  0001 C CNN
F 3 "" H 10000 4900 50  0001 C CNN
	1    10000 4900
	1    0    0    -1  
$EndComp
$EndSCHEMATC

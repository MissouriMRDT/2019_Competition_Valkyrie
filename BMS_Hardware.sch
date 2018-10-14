EESchema Schematic File Version 4
LIBS:BMS_Hardware-cache
EELAYER 26 0
EELAYER END
$Descr A2 23386 16535
encoding utf-8
Sheet 1 1
Title "BMS "
Date "2018-04-17"
Rev "3"
Comp "Mars Rover Design Team"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 800  2650 0    60   UnSpc ~ 0
GND
Text GLabel 1450 2650 0    60   Input ~ 0
V_IN
Text Notes 700  1700 0    98   ~ 20
Power Input
$Comp
L BMS_Hardware-rescue:D_Zener D1
U 1 1 5ACFDF7D
P 2900 5450
F 0 "D1" H 2900 5550 50  0000 C CNN
F 1 "7.5V" H 2900 5350 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-323_HandSoldering" H 2900 5450 50  0001 C CNN
F 3 "" H 2900 5450 50  0001 C CNN
	1    2900 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 5300 2900 5300
Connection ~ 3250 5300
Wire Wire Line
	3250 5600 3250 5650
Text GLabel 3250 5750 0    60   UnSpc ~ 0
GND
Connection ~ 2900 5300
Wire Wire Line
	2900 5600 2900 5650
Wire Wire Line
	2900 5650 3250 5650
Text GLabel 2700 5300 0    60   Output ~ 0
CELL_1_FILTER
$Comp
L BMS_Hardware-rescue:R R2
U 1 1 5ACFEC31
P 0 5900
F 0 "R2" V 80  5900 50  0000 C CNN
F 1 "100" V 0   5900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V -70 5900 50  0001 C CNN
F 3 "" H 0   5900 50  0001 C CNN
	1    0    5900
	0    1    1    0   
$EndComp
Wire Wire Line
	-1050 5900 -850 5900
Connection ~ -500 5900
Text GLabel 2050 6300 0    51   Input ~ 0
CELL_2
Text GLabel -500 6350 0    60   UnSpc ~ 0
GND
Connection ~ -850 5900
Wire Wire Line
	-850 6200 -850 6250
Text GLabel -1050 5900 0    60   Output ~ 0
CELL_2_FILTER
Text GLabel -1050 6250 0    60   Output ~ 0
CELL_1_FILTER
Wire Wire Line
	-850 6250 -1050 6250
$Comp
L BMS_Hardware-rescue:R R3
U 1 1 5ACFF0AE
P 0 6600
F 0 "R3" V 80  6600 50  0000 C CNN
F 1 "100" V 0   6600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V -70 6600 50  0001 C CNN
F 3 "" H 0   6600 50  0001 C CNN
	1    0    6600
	0    1    1    0   
$EndComp
Wire Wire Line
	-1050 6600 -850 6600
Connection ~ -500 6600
Text GLabel 2050 7000 0    51   Input ~ 0
CELL_3
Text GLabel -500 7050 0    60   UnSpc ~ 0
GND
Connection ~ -850 6600
Wire Wire Line
	-850 6900 -850 6950
Text GLabel -1050 6600 0    60   Output ~ 0
CELL_3_FILTER
Text GLabel -1050 6950 0    60   Output ~ 0
CELL_2_FILTER
Wire Wire Line
	-850 6950 -1050 6950
$Comp
L BMS_Hardware-rescue:R R4
U 1 1 5ACFF356
P 100 7500
F 0 "R4" V 180 7500 50  0000 C CNN
F 1 "100" V 100 7500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 30  7500 50  0001 C CNN
F 3 "" H 100 7500 50  0001 C CNN
	1    100  7500
	0    1    1    0   
$EndComp
Wire Wire Line
	-950 7500 -750 7500
Connection ~ -400 7500
Text GLabel 2050 7700 0    51   Input ~ 0
CELL_4
Text GLabel -400 7950 0    60   UnSpc ~ 0
GND
Connection ~ -750 7500
Wire Wire Line
	-750 7800 -750 7850
Text GLabel -950 7500 0    60   Output ~ 0
CELL_4_FILTER
Text GLabel -950 7850 0    60   Output ~ 0
CELL_3_FILTER
Wire Wire Line
	-750 7850 -950 7850
$Comp
L BMS_Hardware-rescue:R R5
U 1 1 5ACFF4A2
P 100 8200
F 0 "R5" V 180 8200 50  0000 C CNN
F 1 "100" V 100 8200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 30  8200 50  0001 C CNN
F 3 "" H 100 8200 50  0001 C CNN
	1    100  8200
	0    1    1    0   
$EndComp
Wire Wire Line
	-950 8200 -750 8200
Connection ~ -400 8200
Text GLabel 2050 8400 0    51   Input ~ 0
CELL_5
Text GLabel -400 8650 0    60   UnSpc ~ 0
GND
Connection ~ -750 8200
Wire Wire Line
	-750 8500 -750 8550
Text GLabel -950 8200 0    60   Output ~ 0
CELL_5_FILTER
Text GLabel -950 8550 0    60   Output ~ 0
CELL_4_FILTER
Wire Wire Line
	-750 8550 -950 8550
$Comp
L BMS_Hardware-rescue:R R6
U 1 1 5ACFFD30
P 100 8900
F 0 "R6" V 180 8900 50  0000 C CNN
F 1 "100" V 100 8900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 30  8900 50  0001 C CNN
F 3 "" H 100 8900 50  0001 C CNN
	1    100  8900
	0    1    1    0   
$EndComp
Wire Wire Line
	-950 8900 -750 8900
Connection ~ -400 8900
Text GLabel 2050 9100 0    51   Input ~ 0
CELL_6
Text GLabel -400 9350 0    60   UnSpc ~ 0
GND
Connection ~ -750 8900
Wire Wire Line
	-750 9200 -750 9250
Text GLabel -950 8900 0    60   Output ~ 0
CELL_6_FILTER
Text GLabel -950 9250 0    60   Output ~ 0
CELL_5_FILTER
Wire Wire Line
	-750 9250 -950 9250
$Comp
L BMS_Hardware-rescue:R R7
U 1 1 5ACFFFF3
P 100 9600
F 0 "R7" V 180 9600 50  0000 C CNN
F 1 "100" V 100 9600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 30  9600 50  0001 C CNN
F 3 "" H 100 9600 50  0001 C CNN
	1    100  9600
	0    1    1    0   
$EndComp
Wire Wire Line
	-950 9600 -750 9600
Connection ~ -400 9600
Text GLabel 2000 9850 0    51   Input ~ 0
CELL_7
Text GLabel -400 10050 0    60   UnSpc ~ 0
GND
Connection ~ -750 9600
Wire Wire Line
	-750 9900 -750 9950
Text GLabel -950 9600 0    60   Output ~ 0
CELL_7_FILTER
Text GLabel -950 9950 0    60   Output ~ 0
CELL_6_FILTER
Wire Wire Line
	-750 9950 -950 9950
$Comp
L BMS_Hardware-rescue:R R8
U 1 1 5AD000C1
P 100 10300
F 0 "R8" V 180 10300 50  0000 C CNN
F 1 "100" V 100 10300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 30  10300 50  0001 C CNN
F 3 "" H 100 10300 50  0001 C CNN
	1    100  10300
	0    1    1    0   
$EndComp
Wire Wire Line
	-950 10300 -750 10300
Connection ~ -400 10300
Text GLabel 2050 10600 0    51   Input ~ 0
CELL_8
Text GLabel -400 10750 0    60   UnSpc ~ 0
GND
Connection ~ -750 10300
Wire Wire Line
	-750 10600 -750 10650
Text GLabel -950 10300 0    60   Output ~ 0
CELL_8_FILTER
Text GLabel -950 10650 0    60   Output ~ 0
CELL_7_FILTER
Wire Wire Line
	-750 10650 -950 10650
$Comp
L BMS_Hardware-rescue:Molex_SL_2 U2
U 1 1 5AD038BF
P 6750 9200
F 0 "U2" H 6800 9150 60  0001 C CNN
F 1 "FAN_1" H 6800 9450 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_2_Vertical" H 6750 9100 60  0001 C CNN
F 3 "" H 6750 9100 60  0001 C CNN
	1    6750 9200
	-1   0    0    1   
$EndComp
$Comp
L BMS_Hardware-rescue:2N7002 Q1
U 1 1 5AD03B1C
P 7500 9350
F 0 "Q1" V 7800 9500 50  0000 L CNN
F 1 "2N7002PW" V 7700 9350 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 7700 9275 50  0001 L CIN
F 3 "" H 7500 9350 50  0001 L CNN
	1    7500 9350
	0    -1   -1   0   
$EndComp
$Comp
L BMS_Hardware-rescue:R R10
U 1 1 5AD03DF4
P 7800 9650
F 0 "R10" V 7880 9650 50  0000 C CNN
F 1 "100K" V 7800 9650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7730 9650 50  0001 C CNN
F 3 "" H 7800 9650 50  0001 C CNN
	1    7800 9650
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 9250 7950 9250
Wire Wire Line
	7950 9250 7950 9650
Connection ~ 7950 9250
Wire Wire Line
	7450 9650 7500 9650
Wire Wire Line
	7500 9650 7500 9550
Connection ~ 7500 9650
Text GLabel 7450 9650 0    60   Input ~ 0
FAN_CTL_1
Wire Wire Line
	6950 9350 7100 9350
Text GLabel 7100 9350 2    60   Input ~ 0
5V
Wire Wire Line
	7300 9250 6950 9250
Text GLabel 8050 9250 2    60   UnSpc ~ 0
GND
$Comp
L BMS_Hardware-rescue:Molex_SL_2 U4
U 1 1 5AD08044
P 8550 9200
F 0 "U4" H 8600 9150 60  0001 C CNN
F 1 "FAN_2" H 8600 9450 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_2_Vertical" H 8550 9100 60  0001 C CNN
F 3 "" H 8550 9100 60  0001 C CNN
	1    8550 9200
	-1   0    0    1   
$EndComp
$Comp
L BMS_Hardware-rescue:2N7002 Q4
U 1 1 5AD0804A
P 9300 9350
F 0 "Q4" V 9600 9500 50  0000 L CNN
F 1 "2N7002PW" V 9500 9350 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 9500 9275 50  0001 L CIN
F 3 "" H 9300 9350 50  0001 L CNN
	1    9300 9350
	0    -1   -1   0   
$EndComp
$Comp
L BMS_Hardware-rescue:R R12
U 1 1 5AD08050
P 9600 9650
F 0 "R12" V 9680 9650 50  0000 C CNN
F 1 "100K" V 9600 9650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9530 9650 50  0001 C CNN
F 3 "" H 9600 9650 50  0001 C CNN
	1    9600 9650
	0    1    1    0   
$EndComp
Wire Wire Line
	9500 9250 9750 9250
Wire Wire Line
	9750 9250 9750 9650
Connection ~ 9750 9250
Wire Wire Line
	9250 9650 9300 9650
Wire Wire Line
	9300 9650 9300 9550
Connection ~ 9300 9650
Text GLabel 9250 9650 0    60   Input ~ 0
FAN_CTL_2
Wire Wire Line
	8750 9350 8900 9350
Text GLabel 8900 9350 2    60   Input ~ 0
5V
Wire Wire Line
	9100 9250 8750 9250
Text GLabel 9850 9250 2    60   UnSpc ~ 0
GND
$Comp
L BMS_Hardware-rescue:Molex_SL_2 U8
U 1 1 5AD08267
P 6750 10400
F 0 "U8" H 6800 10350 60  0001 C CNN
F 1 "FAN_3" H 6800 10650 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_2_Vertical" H 6750 10300 60  0001 C CNN
F 3 "" H 6750 10300 60  0001 C CNN
	1    6750 10400
	-1   0    0    1   
$EndComp
$Comp
L BMS_Hardware-rescue:2N7002 Q5
U 1 1 5AD0826D
P 7500 10550
F 0 "Q5" V 7800 10700 50  0000 L CNN
F 1 "2N7002PW" V 7700 10550 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 7700 10475 50  0001 L CIN
F 3 "" H 7500 10550 50  0001 L CNN
	1    7500 10550
	0    -1   -1   0   
$EndComp
$Comp
L BMS_Hardware-rescue:R R20
U 1 1 5AD08273
P 7800 10850
F 0 "R20" V 7880 10850 50  0000 C CNN
F 1 "100K" V 7800 10850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7730 10850 50  0001 C CNN
F 3 "" H 7800 10850 50  0001 C CNN
	1    7800 10850
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 10450 7950 10450
Wire Wire Line
	7950 10450 7950 10850
Connection ~ 7950 10450
Wire Wire Line
	7450 10850 7500 10850
Wire Wire Line
	7500 10850 7500 10750
Connection ~ 7500 10850
Text GLabel 7450 10850 0    60   Input ~ 0
FAN_CTL_3
Wire Wire Line
	6950 10550 7100 10550
Text GLabel 7100 10550 2    60   Input ~ 0
5V
Wire Wire Line
	7300 10450 6950 10450
Text GLabel 8050 10450 2    60   UnSpc ~ 0
GND
$Comp
L BMS_Hardware-rescue:Molex_SL_2 U12
U 1 1 5AD08A2A
P 8500 10400
F 0 "U12" H 8550 10350 60  0001 C CNN
F 1 "FAN_4" H 8550 10650 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_2_Vertical" H 8500 10300 60  0001 C CNN
F 3 "" H 8500 10300 60  0001 C CNN
	1    8500 10400
	-1   0    0    1   
$EndComp
$Comp
L BMS_Hardware-rescue:2N7002 Q8
U 1 1 5AD08A30
P 9250 10550
F 0 "Q8" V 9550 10700 50  0000 L CNN
F 1 "2N7002PW" V 9450 10550 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 9450 10475 50  0001 L CIN
F 3 "" H 9250 10550 50  0001 L CNN
	1    9250 10550
	0    -1   -1   0   
$EndComp
$Comp
L BMS_Hardware-rescue:R R24
U 1 1 5AD08A36
P 9550 10850
F 0 "R24" V 9630 10850 50  0000 C CNN
F 1 "100K" V 9550 10850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9480 10850 50  0001 C CNN
F 3 "" H 9550 10850 50  0001 C CNN
	1    9550 10850
	0    1    1    0   
$EndComp
Wire Wire Line
	9450 10450 9700 10450
Wire Wire Line
	9700 10450 9700 10850
Connection ~ 9700 10450
Wire Wire Line
	9200 10850 9250 10850
Wire Wire Line
	9250 10850 9250 10750
Connection ~ 9250 10850
Text GLabel 9200 10850 0    60   Input ~ 0
FAN_CTL_4
Wire Wire Line
	8700 10550 8850 10550
Text GLabel 8850 10550 2    60   Input ~ 0
5V
Wire Wire Line
	9050 10450 8700 10450
Text GLabel 9800 10450 2    60   UnSpc ~ 0
GND
Text Notes 7650 8600 0    98   ~ 20
Fan Power/Control
$Comp
L BMS_Hardware-rescue:OKI U16
U 1 1 5AD0BE28
P 11650 1300
F 0 "U16" H 11500 1050 60  0001 C CNN
F 1 "OKI" H 11800 1650 60  0000 C CNN
F 2 "MRDT_Devices:OKI_Horisontal" H 11400 1200 60  0001 C CNN
F 3 "" H 11400 1200 60  0001 C CNN
	1    11650 1300
	0    -1   -1   0   
$EndComp
$Comp
L BMS_Hardware-rescue:OKI U18
U 1 1 5AD0C9A8
P 14100 1300
F 0 "U18" H 13950 1050 60  0001 C CNN
F 1 "OKI" H 14250 1650 60  0000 C CNN
F 2 "MRDT_Devices:OKI_Horisontal" H 13850 1200 60  0001 C CNN
F 3 "" H 13850 1200 60  0001 C CNN
	1    14100 1300
	0    -1   -1   0   
$EndComp
$Comp
L BMS_Hardware-rescue:CP1 C17
U 1 1 5AD0CE84
P 11150 1750
F 0 "C17" H 11175 1850 50  0000 L CNN
F 1 "22u 50V" H 11175 1650 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 11150 1750 50  0001 C CNN
F 3 "" H 11150 1750 50  0001 C CNN
	1    11150 1750
	1    0    0    -1  
$EndComp
$Comp
L BMS_Hardware-rescue:CP1 C26
U 1 1 5AD0CF46
P 13600 1750
F 0 "C26" H 13625 1850 50  0000 L CNN
F 1 "22u 50V" H 13625 1650 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 13600 1750 50  0001 C CNN
F 3 "" H 13600 1750 50  0001 C CNN
	1    13600 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 1600 11150 1600
Wire Wire Line
	11400 1600 11400 1500
Wire Wire Line
	13450 1600 13600 1600
Wire Wire Line
	13850 1600 13850 1500
Wire Wire Line
	11600 1600 11600 1500
Wire Wire Line
	14050 1600 14050 1500
Wire Wire Line
	13950 1500 13950 1900
Wire Wire Line
	13600 1900 13950 1900
Connection ~ 13950 1900
Text GLabel 13950 1950 3    60   UnSpc ~ 0
GND
Text GLabel 15400 1600 2    60   Output ~ 0
5V
Connection ~ 13600 1600
Wire Wire Line
	11500 1500 11500 1900
Wire Wire Line
	11150 1900 11500 1900
Connection ~ 11500 1900
Text GLabel 11500 1950 3    60   UnSpc ~ 0
GND
Wire Wire Line
	11000 1600 11000 1550
Connection ~ 11150 1600
Text GLabel 11000 1550 1    60   Input ~ 0
LOGIC_PWR
Text GLabel 12950 1600 2    60   Output ~ 0
3V3
Wire Wire Line
	13450 1600 13450 1550
Text Notes 12450 700  0    98   ~ 20
Voltage Converters
$Comp
L BMS_Hardware-rescue:BATT_PWR_VIA V1
U 1 1 5AD3D15A
P 850 2300
F 0 "V1" H 1000 2350 60  0000 C CNN
F 1 "BATT_PWR_VIA" H 850 2500 60  0000 C CNN
F 2 "MRDT_Drill_Holes:BATT_PWR_VIA" H 850 2300 60  0001 C CNN
F 3 "" H 850 2300 60  0001 C CNN
	1    850  2300
	1    0    0    -1  
$EndComp
$Comp
L BMS_Hardware-rescue:BATT_PWR_VIA V2
U 1 1 5AD3D2F1
P 1500 2300
F 0 "V2" H 1650 2350 60  0000 C CNN
F 1 "BATT_PWR_VIA" H 1500 2500 60  0000 C CNN
F 2 "MRDT_Drill_Holes:BATT_PWR_VIA" H 1500 2300 60  0001 C CNN
F 3 "" H 1500 2300 60  0001 C CNN
	1    1500 2300
	1    0    0    -1  
$EndComp
$Comp
L BMS_Hardware-rescue:ACS759ECB-200B-PFF-T U1
U 1 1 5AD433B8
P 8000 3050
F 0 "U1" H 8700 3100 60  0000 C CNN
F 1 "ACS759ECB-200B-PFF-T" H 8300 3600 60  0000 C CNN
F 2 "PFF_PSF_PSS_Leadforms:PFF_Leadform_5pins" H 8000 3050 60  0001 C CNN
F 3 "" H 8000 3050 60  0001 C CNN
	1    8000 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  2500 850  2650
Wire Wire Line
	1500 2500 1500 2650
Connection ~ 1500 2650
Wire Wire Line
	8150 3250 8150 3400
Text GLabel 8150 3400 0    60   Input ~ 0
3V3
Wire Wire Line
	8300 3250 8300 3550
Wire Wire Line
	8450 3250 8450 3700
Text GLabel 8300 3550 0    60   UnSpc ~ 0
GND
Text GLabel 8450 3700 0    60   Output ~ 0
PACK_I_MEAS
$Comp
L BMS_Hardware-rescue:LT1910 U6
U 1 1 5AD49EFE
P 4350 3750
F 0 "U6" H 4400 3700 60  0000 C CNN
F 1 "LT1910" H 4500 4300 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 4350 3750 60  0001 C CNN
F 3 "" H 4350 3750 60  0001 C CNN
	1    4350 3750
	-1   0    0    -1  
$EndComp
$Comp
L BMS_Hardware-rescue:C C10
U 1 1 5AD4A94A
P 2850 3400
F 0 "C10" H 2860 3470 50  0000 L CNN
F 1 "10u" H 2860 3320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2850 3400 50  0001 C CNN
F 3 "" H 2850 3400 50  0001 C CNN
	1    2850 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3950 3950 4150
Text GLabel 4200 4300 0    60   UnSpc ~ 0
GND
Wire Wire Line
	2850 3250 2850 3150
Wire Wire Line
	2850 3150 3300 3150
Wire Wire Line
	3300 3500 3400 3500
Wire Wire Line
	3300 2650 3300 3150
Connection ~ 3300 2650
Wire Wire Line
	3400 3350 3300 3350
Connection ~ 3300 3350
Connection ~ 3300 3150
Wire Wire Line
	2850 3550 2850 4150
$Comp
L BMS_Hardware-rescue:Molex_SL_2 U7
U 1 1 5AD4F9B2
P 5200 3300
F 0 "U7" H 5250 3250 60  0001 C CNN
F 1 "E_STOP" V 5350 3400 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_2_Vertical" H 5200 3200 60  0001 C CNN
F 3 "" H 5200 3200 60  0001 C CNN
	1    5200 3300
	0    -1   -1   0   
$EndComp
$Comp
L BMS_Hardware-rescue:Molex_SL_4 U10
U 1 1 5AD4FCDE
P 6000 3300
F 0 "U10" H 6050 3250 60  0001 C CNN
F 1 "E_STOP+LED" V 6150 3550 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_4_Vertical" H 6000 3300 60  0001 C CNN
F 3 "" H 6000 3300 60  0001 C CNN
	1    6000 3300
	0    -1   -1   0   
$EndComp
$Comp
L BMS_Hardware-rescue:R R13
U 1 1 5AD50271
P 4750 3900
F 0 "R13" V 4830 3900 50  0000 C CNN
F 1 "10k" V 4750 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4680 3900 50  0001 C CNN
F 3 "" H 4750 3900 50  0001 C CNN
	1    4750 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3500 4750 3500
Wire Wire Line
	4750 3750 4750 3500
Connection ~ 4750 3500
Wire Wire Line
	2850 4150 3950 4150
Wire Wire Line
	4200 4300 4200 4150
Connection ~ 4200 4150
Connection ~ 3950 4150
Wire Wire Line
	4750 4050 4750 4150
Connection ~ 4750 4150
Text GLabel 5750 3600 0    60   Output ~ 0
PACK_GATE
Wire Wire Line
	5150 3500 5650 3500
Wire Wire Line
	5750 3500 5750 3600
Wire Wire Line
	5950 4150 5950 3500
Wire Wire Line
	5850 3500 5850 3800
$Comp
L BMS_Hardware-rescue:R R19
U 1 1 5AD5479F
P 5850 3950
F 0 "R19" V 5750 3950 50  0000 C CNN
F 1 "10k" V 5850 3950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5780 3950 50  0001 C CNN
F 3 "" H 5850 3950 50  0001 C CNN
	1    5850 3950
	1    0    0    -1  
$EndComp
$Comp
L BMS_Hardware-rescue:R R18
U 1 1 5AD54C65
P 5600 3800
F 0 "R18" V 5500 3800 50  0000 C CNN
F 1 "4k" V 5600 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5530 3800 50  0001 C CNN
F 3 "" H 5600 3800 50  0001 C CNN
	1    5600 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 3800 5750 3800
Connection ~ 5850 3800
Wire Wire Line
	5850 4100 5850 4150
Connection ~ 5850 4150
Wire Wire Line
	5450 3800 5400 3800
Text GLabel 5400 3800 0    60   Input ~ 0
V_OUT
$Comp
L BMS_Hardware-rescue:2N7002 Q7
U 1 1 5AD56DEE
P 7000 2250
F 0 "Q7" H 7200 2325 50  0000 L CNN
F 1 "IRLS3034-7P" H 7200 2250 50  0000 L CNN
F 2 "MRDT_ICs:IRLS3034_TO-263-7_P" H 7200 2175 50  0001 L CIN
F 3 "" H 7000 2250 50  0001 L CNN
	1    7000 2250
	0    -1   -1   0   
$EndComp
$Comp
L BMS_Hardware-rescue:2N7002 Q6
U 1 1 5AD56EC5
P 6650 2750
F 0 "Q6" H 6850 2825 50  0000 L CNN
F 1 "IRLS3034-7P" H 6850 2750 50  0000 L CNN
F 2 "MRDT_ICs:IRLS3034_TO-263-7_P" H 6850 2675 50  0001 L CIN
F 3 "" H 6650 2750 50  0001 L CNN
	1    6650 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6800 2150 6350 2150
Wire Wire Line
	6350 2150 6350 2650
Connection ~ 6350 2650
Wire Wire Line
	6850 2650 7300 2650
Wire Wire Line
	8800 2650 9500 2650
Wire Wire Line
	7200 2150 7300 2150
Wire Wire Line
	7300 2150 7300 2650
Connection ~ 7300 2650
Wire Wire Line
	7000 2450 7000 2950
Wire Wire Line
	3300 3650 3400 3650
Wire Wire Line
	6650 2950 7000 2950
Connection ~ 7000 2950
$Comp
L BMS_Hardware-rescue:R R22
U 1 1 5AD5C40D
P 9500 2950
F 0 "R22" V 9400 2950 50  0000 C CNN
F 1 "1M" V 9500 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9430 2950 50  0001 C CNN
F 3 "" H 9500 2950 50  0001 C CNN
	1    9500 2950
	1    0    0    -1  
$EndComp
$Comp
L BMS_Hardware-rescue:R R23
U 1 1 5AD5C4DB
P 9500 3450
F 0 "R23" V 9400 3450 50  0000 C CNN
F 1 "100k" V 9500 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9430 3450 50  0001 C CNN
F 3 "" H 9500 3450 50  0001 C CNN
	1    9500 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 3100 9500 3200
Wire Wire Line
	9500 3600 9500 3700
Text GLabel 9500 3700 0    60   UnSpc ~ 0
GND
Wire Wire Line
	9500 2650 9500 2800
Wire Wire Line
	9500 3200 9600 3200
Connection ~ 9500 3200
Text GLabel 9600 3200 2    60   Output ~ 0
V_CHECK_OUT
$Comp
L BMS_Hardware-rescue:Molex_SL_4 U5
U 1 1 5AD5D895
P 4200 1000
F 0 "U5" H 4250 950 60  0001 C CNN
F 1 "LOGIC_SWITCH" V 4350 1200 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_4_Vertical" H 4200 1000 60  0001 C CNN
F 3 "" H 4200 1000 60  0001 C CNN
	1    4200 1000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4050 1200 4050 2650
Connection ~ 4050 2650
Wire Wire Line
	3850 1200 3850 1250
Wire Wire Line
	3850 1250 3250 1250
Wire Wire Line
	3250 1250 3250 1350
Wire Wire Line
	3950 1200 3950 1400
Text GLabel 3950 1400 0    60   Input ~ 0
5V
$Comp
L BMS_Hardware-rescue:2N7002 Q2
U 1 1 5AD6100F
P 3150 1550
F 0 "Q2" H 3350 1625 50  0000 L CNN
F 1 "2N7002PW" H 3350 1550 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 3350 1475 50  0001 L CIN
F 3 "" H 3150 1550 50  0001 L CNN
	1    3150 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1750 3250 1950
$Comp
L BMS_Hardware-rescue:R R9
U 1 1 5AD62758
P 2850 1800
F 0 "R9" V 2930 1800 50  0000 C CNN
F 1 "10k" V 2850 1800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2780 1800 50  0001 C CNN
F 3 "" H 2850 1800 50  0001 C CNN
	1    2850 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1550 2850 1550
Wire Wire Line
	2850 1550 2850 1650
Wire Wire Line
	2850 1950 3250 1950
Connection ~ 3250 1950
Text GLabel 3250 2050 0    60   UnSpc ~ 0
GND
Text GLabel 2850 1550 0    60   Input ~ 0
LOGIC_SWITCH
$Comp
L BMS_Hardware-rescue:Polyfuse F1
U 1 1 5AD64861
P 4450 1250
F 0 "F1" V 4350 1250 50  0000 C CNN
F 1 "PTC2920" V 4550 1250 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuse_SMD2920" H 4500 1050 50  0001 L CNN
F 3 "" H 4450 1250 50  0001 C CNN
	1    4450 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 1200 4150 1250
Wire Wire Line
	4150 1250 4300 1250
$Comp
L BMS_Hardware-rescue:R R14
U 1 1 5AD66C56
P 4800 1500
F 0 "R14" V 4700 1500 50  0000 C CNN
F 1 "1M" V 4800 1500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4730 1500 50  0001 C CNN
F 3 "" H 4800 1500 50  0001 C CNN
	1    4800 1500
	1    0    0    -1  
$EndComp
$Comp
L BMS_Hardware-rescue:R R15
U 1 1 5AD66D2F
P 4800 1950
F 0 "R15" V 4700 1950 50  0000 C CNN
F 1 "100k" V 4800 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4730 1950 50  0001 C CNN
F 3 "" H 4800 1950 50  0001 C CNN
	1    4800 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1250 4800 1250
Wire Wire Line
	4800 1250 4800 1350
Wire Wire Line
	4800 1650 4800 1750
Wire Wire Line
	4800 2100 4800 2200
Text GLabel 4800 2200 0    60   UnSpc ~ 0
GND
Wire Wire Line
	4800 1750 4850 1750
Connection ~ 4800 1750
Text GLabel 4850 1750 2    60   Output ~ 0
V_CHECK_ARRAY
Connection ~ 9500 2650
Text GLabel 9800 2650 2    60   Output ~ 0
V_OUT
Text Notes 8700 1500 0    98   ~ 20
Power Output
Wire Wire Line
	3300 3650 3300 4450
Wire Wire Line
	3300 4450 7000 4450
Wire Notes Line
	2000 600  2000 2400
Wire Notes Line
	5750 2400 5750 600 
Wire Notes Line
	5750 600  2000 600 
Wire Notes Line
	2650 2800 2650 4650
Wire Notes Line
	2650 4650 6150 4650
Wire Notes Line
	6150 4650 6150 2800
Wire Notes Line
	6150 2800 2650 2800
Wire Notes Line
	6300 4650 10350 4650
Wire Notes Line
	10350 4650 10350 1350
Wire Notes Line
	10350 1350 6300 1350
Wire Notes Line
	1850 1550 1850 4050
Wire Notes Line
	1850 4050 550  4050
Wire Notes Line
	550  4050 550  1550
Wire Notes Line
	550  1550 1850 1550
Text Notes 7550 2350 0    98   ~ 20
Current Measurment
Wire Notes Line
	2000 2400 5750 2400
Text Notes 3750 2950 0    98   ~ 20
E-Stop
Text Notes 2950 750  0    98   ~ 20
Logic Power Switch
Wire Notes Line
	15950 4800 500  4800
$Comp
L BMS_Hardware-rescue:C C18
U 1 1 5AD90889
P 11800 1750
F 0 "C18" H 11810 1820 50  0000 L CNN
F 1 "10u" H 11810 1670 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 11800 1750 50  0001 C CNN
F 3 "" H 11800 1750 50  0001 C CNN
	1    11800 1750
	1    0    0    -1  
$EndComp
$Comp
L BMS_Hardware-rescue:C C19
U 1 1 5AD90D28
P 12050 1750
F 0 "C19" H 12060 1820 50  0000 L CNN
F 1 "10u" H 12060 1670 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 12050 1750 50  0001 C CNN
F 3 "" H 12050 1750 50  0001 C CNN
	1    12050 1750
	1    0    0    -1  
$EndComp
$Comp
L BMS_Hardware-rescue:C C20
U 1 1 5AD90DE6
P 12300 1750
F 0 "C20" H 12310 1820 50  0000 L CNN
F 1 "10u" H 12310 1670 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 12300 1750 50  0001 C CNN
F 3 "" H 12300 1750 50  0001 C CNN
	1    12300 1750
	1    0    0    -1  
$EndComp
$Comp
L BMS_Hardware-rescue:C C23
U 1 1 5AD90EA5
P 12550 1750
F 0 "C23" H 12560 1820 50  0000 L CNN
F 1 "10u" H 12560 1670 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 12550 1750 50  0001 C CNN
F 3 "" H 12550 1750 50  0001 C CNN
	1    12550 1750
	1    0    0    -1  
$EndComp
$Comp
L BMS_Hardware-rescue:C C24
U 1 1 5AD916E3
P 12800 1750
F 0 "C24" H 12810 1820 50  0000 L CNN
F 1 "0.1u" H 12810 1670 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 12800 1750 50  0001 C CNN
F 3 "" H 12800 1750 50  0001 C CNN
	1    12800 1750
	1    0    0    -1  
$EndComp
$Comp
L BMS_Hardware-rescue:C C27
U 1 1 5AD917AE
P 14250 1750
F 0 "C27" H 14260 1820 50  0000 L CNN
F 1 "10u" H 14260 1670 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 14250 1750 50  0001 C CNN
F 3 "" H 14250 1750 50  0001 C CNN
	1    14250 1750
	1    0    0    -1  
$EndComp
$Comp
L BMS_Hardware-rescue:C C28
U 1 1 5AD91888
P 14500 1750
F 0 "C28" H 14510 1820 50  0000 L CNN
F 1 "10u" H 14510 1670 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 14500 1750 50  0001 C CNN
F 3 "" H 14500 1750 50  0001 C CNN
	1    14500 1750
	1    0    0    -1  
$EndComp
$Comp
L BMS_Hardware-rescue:C C29
U 1 1 5AD91955
P 14750 1750
F 0 "C29" H 14760 1820 50  0000 L CNN
F 1 "10u" H 14760 1670 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 14750 1750 50  0001 C CNN
F 3 "" H 14750 1750 50  0001 C CNN
	1    14750 1750
	1    0    0    -1  
$EndComp
$Comp
L BMS_Hardware-rescue:C C30
U 1 1 5AD91A23
P 15000 1750
F 0 "C30" H 15010 1820 50  0000 L CNN
F 1 "10u" H 15010 1670 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 15000 1750 50  0001 C CNN
F 3 "" H 15000 1750 50  0001 C CNN
	1    15000 1750
	1    0    0    -1  
$EndComp
$Comp
L BMS_Hardware-rescue:C C31
U 1 1 5AD91AF8
P 15250 1750
F 0 "C31" H 15260 1820 50  0000 L CNN
F 1 "0.1u" H 15260 1670 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 15250 1750 50  0001 C CNN
F 3 "" H 15250 1750 50  0001 C CNN
	1    15250 1750
	1    0    0    -1  
$EndComp
Connection ~ 14250 1900
Wire Wire Line
	14050 1600 14250 1600
Wire Wire Line
	11600 1600 11800 1600
Text Notes 11750 1200 0    59   ~ 12
3V3 OKI
Text Notes 14200 1200 0    59   ~ 12
5V OKI
Connection ~ 11800 1900
Connection ~ 12050 1900
Connection ~ 12300 1900
Connection ~ 12550 1900
Connection ~ 12800 1600
Connection ~ 12550 1600
Connection ~ 12300 1600
Connection ~ 12050 1600
Connection ~ 11800 1600
Connection ~ 14250 1600
Connection ~ 14500 1600
Connection ~ 14750 1600
Connection ~ 15000 1600
Connection ~ 15250 1600
Connection ~ 15000 1900
Connection ~ 14750 1900
Connection ~ 14500 1900
Text Notes 2650 4950 0    98   ~ 20
Cell Filters
$Comp
L BMS_Hardware-rescue:C C1
U 1 1 5ADAB430
P 3250 5450
F 0 "C1" H 3260 5520 50  0000 L CNN
F 1 "100n" H 3260 5370 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3250 5450 50  0001 C CNN
F 3 "" H 3250 5450 50  0001 C CNN
	1    3250 5450
	1    0    0    -1  
$EndComp
$Comp
L BMS_Hardware-rescue:D_Zener D2
U 1 1 5ADAC37B
P -850 6050
F 0 "D2" H -850 6150 50  0000 C CNN
F 1 "7.5V" H -850 5950 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-323_HandSoldering" H -850 6050 50  0001 C CNN
F 3 "" H -850 6050 50  0001 C CNN
	1    -850 6050
	0    1    1    0   
$EndComp
$Comp
L BMS_Hardware-rescue:D_Zener D3
U 1 1 5ADAC435
P -850 6750
F 0 "D3" H -850 6850 50  0000 C CNN
F 1 "7.5V" H -850 6650 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-323_HandSoldering" H -850 6750 50  0001 C CNN
F 3 "" H -850 6750 50  0001 C CNN
	1    -850 6750
	0    1    1    0   
$EndComp
$Comp
L BMS_Hardware-rescue:D_Zener D4
U 1 1 5ADAC4F2
P -750 7650
F 0 "D4" H -750 7750 50  0000 C CNN
F 1 "7.5V" H -750 7550 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-323_HandSoldering" H -750 7650 50  0001 C CNN
F 3 "" H -750 7650 50  0001 C CNN
	1    -750 7650
	0    1    1    0   
$EndComp
$Comp
L BMS_Hardware-rescue:D_Zener D5
U 1 1 5ADAC6E2
P -750 8350
F 0 "D5" H -750 8450 50  0000 C CNN
F 1 "7.5V" H -750 8250 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-323_HandSoldering" H -750 8350 50  0001 C CNN
F 3 "" H -750 8350 50  0001 C CNN
	1    -750 8350
	0    1    1    0   
$EndComp
$Comp
L BMS_Hardware-rescue:D_Zener D6
U 1 1 5ADACAB9
P -750 9050
F 0 "D6" H -750 9150 50  0000 C CNN
F 1 "7.5V" H -750 8950 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-323_HandSoldering" H -750 9050 50  0001 C CNN
F 3 "" H -750 9050 50  0001 C CNN
	1    -750 9050
	0    1    1    0   
$EndComp
$Comp
L BMS_Hardware-rescue:D_Zener D7
U 1 1 5ADACB7F
P -750 9750
F 0 "D7" H -750 9850 50  0000 C CNN
F 1 "7.5V" H -750 9650 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-323_HandSoldering" H -750 9750 50  0001 C CNN
F 3 "" H -750 9750 50  0001 C CNN
	1    -750 9750
	0    1    1    0   
$EndComp
$Comp
L BMS_Hardware-rescue:D_Zener D8
U 1 1 5ADAD1E7
P -750 10450
F 0 "D8" H -750 10550 50  0000 C CNN
F 1 "7.5V" H -750 10350 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-323_HandSoldering" H -750 10450 50  0001 C CNN
F 3 "" H -750 10450 50  0001 C CNN
	1    -750 10450
	0    1    1    0   
$EndComp
$Comp
L BMS_Hardware-rescue:C C2
U 1 1 5ADAD689
P -500 6050
F 0 "C2" H -490 6120 50  0000 L CNN
F 1 "100n" H -490 5970 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H -500 6050 50  0001 C CNN
F 3 "" H -500 6050 50  0001 C CNN
	1    -500 6050
	1    0    0    -1  
$EndComp
$Comp
L BMS_Hardware-rescue:C C3
U 1 1 5ADAD752
P -500 6750
F 0 "C3" H -490 6820 50  0000 L CNN
F 1 "100n" H -490 6670 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H -500 6750 50  0001 C CNN
F 3 "" H -500 6750 50  0001 C CNN
	1    -500 6750
	1    0    0    -1  
$EndComp
$Comp
L BMS_Hardware-rescue:C C4
U 1 1 5ADAD920
P -400 7650
F 0 "C4" H -390 7720 50  0000 L CNN
F 1 "100n" H -390 7570 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H -400 7650 50  0001 C CNN
F 3 "" H -400 7650 50  0001 C CNN
	1    -400 7650
	1    0    0    -1  
$EndComp
$Comp
L BMS_Hardware-rescue:C C5
U 1 1 5ADADB3C
P -400 8350
F 0 "C5" H -390 8420 50  0000 L CNN
F 1 "100n" H -390 8270 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H -400 8350 50  0001 C CNN
F 3 "" H -400 8350 50  0001 C CNN
	1    -400 8350
	1    0    0    -1  
$EndComp
$Comp
L BMS_Hardware-rescue:C C6
U 1 1 5ADADF76
P -400 9050
F 0 "C6" H -390 9120 50  0000 L CNN
F 1 "100n" H -390 8970 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H -400 9050 50  0001 C CNN
F 3 "" H -400 9050 50  0001 C CNN
	1    -400 9050
	1    0    0    -1  
$EndComp
$Comp
L BMS_Hardware-rescue:C C7
U 1 1 5ADAE2C3
P -400 9750
F 0 "C7" H -390 9820 50  0000 L CNN
F 1 "100n" H -390 9670 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H -400 9750 50  0001 C CNN
F 3 "" H -400 9750 50  0001 C CNN
	1    -400 9750
	1    0    0    -1  
$EndComp
$Comp
L BMS_Hardware-rescue:C C8
U 1 1 5ADAE3A5
P -400 10450
F 0 "C8" H -390 10520 50  0000 L CNN
F 1 "100n" H -390 10370 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H -400 10450 50  0001 C CNN
F 3 "" H -400 10450 50  0001 C CNN
	1    -400 10450
	1    0    0    -1  
$EndComp
$Comp
L BMS_Hardware-rescue:Molex_SL_9 Conn1
U 1 1 5ADCCBD4
P 7350 6300
F 0 "Conn1" H 7400 6250 60  0001 C CNN
F 1 "CHARGE_SENSE_BOTTOM" H 7400 7250 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_9_Vertical" H 7350 6700 60  0001 C CNN
F 3 "" H 7350 6700 60  0001 C CNN
	1    7350 6300
	-1   0    0    -1  
$EndComp
$Comp
L BMS_Hardware-rescue:Molex_SL_9 Conn2
U 1 1 5ADCCE3C
P 8600 6300
F 0 "Conn2" H 8650 6250 60  0001 C CNN
F 1 "CHARGE_SENSE_TOP" H 8650 7250 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_9_Vertical" H 8600 6700 60  0001 C CNN
F 3 "" H 8600 6700 60  0001 C CNN
	1    8600 6300
	-1   0    0    -1  
$EndComp
Text GLabel 7550 5450 2    55   Input ~ 0
CELL_8
Text GLabel 7550 5550 2    55   Input ~ 0
CELL_7
Text GLabel 7550 5650 2    55   Input ~ 0
CELL_6
Text GLabel 7550 5750 2    55   Input ~ 0
CELL_5
Text GLabel 7550 5850 2    55   Input ~ 0
CELL_4
Text GLabel 7550 5950 2    55   Input ~ 0
CELL_3
Text GLabel 7550 6050 2    55   Input ~ 0
CELL_2
Text GLabel 7550 6150 2    55   Input ~ 0
CELL_1
Text GLabel 7550 6250 2    60   UnSpc ~ 0
GND
Text GLabel 8800 5450 2    55   Input ~ 0
CELL_8
Text GLabel 8800 5550 2    55   Input ~ 0
CELL_7
Text GLabel 8800 5650 2    55   Input ~ 0
CELL_6
Text GLabel 8800 5750 2    55   Input ~ 0
CELL_5
Text GLabel 8800 5850 2    55   Input ~ 0
CELL_4
Text GLabel 8800 5950 2    55   Input ~ 0
CELL_3
Text GLabel 8800 6050 2    55   Input ~ 0
CELL_2
Text GLabel 8800 6150 2    55   Input ~ 0
CELL_1
Text GLabel 8800 6250 2    60   UnSpc ~ 0
GND
Text Notes 7450 5100 0    98   ~ 20
Voltage Monitoring
$Comp
L BMS_Hardware-rescue:BUZZER_SMI_1324_TW_5V_2_R B1
U 1 1 5ADDF51B
P 6700 7550
F 0 "B1" H 6750 7500 60  0000 C CNN
F 1 "BUZZER_SMI_1324_TW_5V_2_R" H 6500 7950 60  0000 C CNN
F 2 "MRDT_Devices:BUZZER_SMI_1324_TW_5V_2_R" H 6700 7550 60  0001 C CNN
F 3 "" H 6700 7550 60  0001 C CNN
	1    6700 7550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6900 7350 6950 7350
Text GLabel 6950 7350 2    60   Input ~ 0
5V
$Comp
L BMS_Hardware-rescue:2N7002 Q3
U 1 1 5ADE0FF4
P 7700 7550
F 0 "Q3" H 7900 7625 50  0000 L CNN
F 1 "2N7002PW" H 7900 7550 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 7900 7475 50  0001 L CIN
F 3 "" H 7700 7550 50  0001 L CNN
	1    7700 7550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6900 7450 7500 7450
Wire Wire Line
	7900 7450 8150 7450
Wire Wire Line
	8150 7450 8150 7800
$Comp
L BMS_Hardware-rescue:R R11
U 1 1 5ADE4541
P 7950 7800
F 0 "R11" V 8030 7800 50  0000 C CNN
F 1 "10K" V 7950 7800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7880 7800 50  0001 C CNN
F 3 "" H 7950 7800 50  0001 C CNN
	1    7950 7800
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 7750 7700 7800
Wire Wire Line
	7600 7800 7700 7800
Wire Wire Line
	8100 7800 8150 7800
Connection ~ 8150 7800
Text GLabel 8150 8000 0    60   UnSpc ~ 0
GND
Connection ~ 7700 7800
Text GLabel 7600 7800 0    60   Input ~ 0
BUZZER
Text Notes 6850 6850 0    98   ~ 20
Buzzer Alarm\n
Text Notes 10900 2600 0    98   ~ 20
Communication\n
$Comp
L BMS_Hardware-rescue:Molex_SL_3 U17
U 1 1 5AD577CD
P 11300 3700
F 0 "U17" H 11350 3650 60  0001 C CNN
F 1 "Indicator Comm" H 11350 4050 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_3_Vertical" H 11300 3700 60  0001 C CNN
F 3 "" H 11300 3700 60  0001 C CNN
	1    11300 3700
	-1   0    0    -1  
$EndComp
Text GLabel 11500 3450 2    49   Input ~ 0
SER_TX_IND
Text GLabel 11500 3650 2    49   UnSpc ~ 0
GND
Text GLabel 11500 3550 2    49   Input ~ 0
3V3
$Comp
L BMS_Hardware-rescue:Molex_SL_3 U11
U 1 1 5AD600DC
P 9150 7650
F 0 "U11" H 9200 7600 60  0001 C CNN
F 1 "TEMP_1" H 9200 8000 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_3_Vertical" H 9150 7650 60  0001 C CNN
F 3 "" H 9150 7650 60  0001 C CNN
	1    9150 7650
	-1   0    0    -1  
$EndComp
Text GLabel 9350 7400 2    49   Input ~ 0
3V3
Text GLabel 9350 7600 2    49   UnSpc ~ 0
GND
Text GLabel 9650 7500 2    49   Output ~ 0
TEMP_1
Text Notes 8600 6850 0    98   ~ 20
Temperature Sensor
Connection ~ 4800 1250
Text GLabel 4850 1250 2    60   Output ~ 0
LOGIC_PWR
Text GLabel 13450 1550 1    60   Input ~ 0
LOGIC_PWR
Text Notes 500  800  0    98   ~ 20
Pack Power Control
$Comp
L BMS_Hardware-rescue:BATT_PWR_VIA V3
U 1 1 5ADB284E
P 9700 2350
F 0 "V3" H 9850 2400 60  0000 C CNN
F 1 "BATT_PWR_VIA" H 9700 2550 60  0000 C CNN
F 2 "MRDT_Drill_Holes:BATT_PWR_VIA" H 9700 2350 60  0001 C CNN
F 3 "" H 9700 2350 60  0001 C CNN
	1    9700 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 2550 9700 2650
Connection ~ 9700 2650
Wire Notes Line
	15950 9950 15950 500 
Text Notes 12600 5100 0    98   ~ 20
Microcontroller\n
Wire Notes Line
	12450 2450 12450 4800
Text Notes 13550 2650 0    98   ~ 20
Indicators\n
$Comp
L BMS_Hardware-rescue:LED D9
U 1 1 5ADE3860
P 13500 3200
F 0 "D9" H 13500 3300 50  0000 C CNN
F 1 "LOG_PWR_LED" H 13500 3100 50  0000 C CNN
F 2 "LEDs:LED_0603_HandSoldering" H 13500 3200 50  0001 C CNN
F 3 "" H 13500 3200 50  0001 C CNN
	1    13500 3200
	0    -1   -1   0   
$EndComp
$Comp
L BMS_Hardware-rescue:R R25
U 1 1 5ADE3DD9
P 13500 3700
F 0 "R25" V 13400 3700 50  0000 C CNN
F 1 "330" V 13500 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 13430 3700 50  0001 C CNN
F 3 "" H 13500 3700 50  0001 C CNN
	1    13500 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	13500 3350 13500 3550
Wire Wire Line
	13500 3850 13500 4050
Wire Wire Line
	13500 2850 13500 3050
Text GLabel 13500 2850 0    60   Input ~ 0
5V
Text GLabel 13500 4050 0    60   UnSpc ~ 0
GND
$Comp
L BMS_Hardware-rescue:2N7002 Q9
U 1 1 5ADE8629
P 14550 3900
F 0 "Q9" H 14750 3975 50  0000 L CNN
F 1 "2N7002PW" H 14750 3900 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 14750 3825 50  0001 L CIN
F 3 "" H 14550 3900 50  0001 L CNN
	1    14550 3900
	-1   0    0    -1  
$EndComp
$Comp
L BMS_Hardware-rescue:LED D10
U 1 1 5ADEB3D1
P 14450 3050
F 0 "D10" H 14450 3150 50  0000 C CNN
F 1 "V_OUT_LED" H 14450 2950 50  0000 C CNN
F 2 "LEDs:LED_0603_HandSoldering" H 14450 3050 50  0001 C CNN
F 3 "" H 14450 3050 50  0001 C CNN
	1    14450 3050
	0    -1   -1   0   
$EndComp
$Comp
L BMS_Hardware-rescue:R R26
U 1 1 5ADEB3D7
P 14450 3450
F 0 "R26" V 14350 3450 50  0000 C CNN
F 1 "330" V 14450 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 14380 3450 50  0001 C CNN
F 3 "" H 14450 3450 50  0001 C CNN
	1    14450 3450
	1    0    0    -1  
$EndComp
Text GLabel 14450 2850 0    60   Input ~ 0
5V
Text GLabel 14450 4400 0    60   UnSpc ~ 0
GND
$Comp
L BMS_Hardware-rescue:R R28
U 1 1 5ADEEA9E
P 15150 4100
F 0 "R28" V 15050 4100 50  0000 C CNN
F 1 "100k" V 15150 4100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 15080 4100 50  0001 C CNN
F 3 "" H 15150 4100 50  0001 C CNN
	1    15150 4100
	1    0    0    -1  
$EndComp
$Comp
L BMS_Hardware-rescue:R R27
U 1 1 5ADEEBCD
P 15150 3550
F 0 "R27" V 15050 3550 50  0000 C CNN
F 1 "1M" V 15150 3550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 15080 3550 50  0001 C CNN
F 3 "" H 15150 3550 50  0001 C CNN
	1    15150 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	14450 4100 14450 4300
Connection ~ 14450 4300
Wire Wire Line
	14750 3900 14850 3900
Wire Wire Line
	15150 3700 15150 3900
Wire Wire Line
	14850 3950 14850 3900
Connection ~ 14850 3900
$Comp
L BMS_Hardware-rescue:D_Zener D11
U 1 1 5ADEDE96
P 14850 4100
F 0 "D11" H 14850 4200 50  0000 C CNN
F 1 "3.6V" H 14850 4000 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-323_HandSoldering" H 14850 4100 50  0001 C CNN
F 3 "" H 14850 4100 50  0001 C CNN
	1    14850 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	14450 4300 14850 4300
Wire Wire Line
	15150 4300 15150 4250
Wire Wire Line
	14850 4250 14850 4300
Connection ~ 14850 4300
Connection ~ 15150 3900
Wire Wire Line
	14450 3600 14450 3700
Wire Wire Line
	14450 3300 14450 3200
Wire Wire Line
	14450 2900 14450 2850
Wire Wire Line
	15150 3400 15150 3250
Text GLabel 15150 3250 0    60   Input ~ 0
V_OUT
$Comp
L BMS_Hardware-rescue:Anderson_2 C32
U 1 1 5AD61B36
P 1400 3300
F 0 "C32" V 1450 3200 60  0000 C CNN
F 1 "Anderson_2" V 1850 3550 60  0000 C CNN
F 2 "MRDT_Connectors:Anderson_2_Vertical" H 1450 2750 60  0001 C CNN
F 3 "" H 1450 2750 60  0001 C CNN
	1    1400 3300
	0    -1   1    0   
$EndComp
Wire Wire Line
	800  2650 850  2650
Connection ~ 850  2650
Wire Wire Line
	1450 2650 1500 2650
Wire Notes Line
	6300 1350 6300 4650
Wire Notes Line
	7500 2150 9100 2150
Wire Notes Line
	9100 2150 9100 3850
Wire Notes Line
	9100 3850 7500 3850
Wire Notes Line
	7500 3850 7500 2150
Wire Wire Line
	1500 3050 1300 3050
Wire Wire Line
	1300 3050 1300 3200
Wire Wire Line
	850  3050 1050 3050
Wire Wire Line
	1050 3050 1050 3200
Wire Wire Line
	3250 5300 3600 5300
Wire Wire Line
	2900 5300 3250 5300
Wire Wire Line
	3250 5650 3250 5750
Wire Wire Line
	-500 5900 -150 5900
Wire Wire Line
	-850 5900 -500 5900
Wire Wire Line
	-500 6600 -150 6600
Wire Wire Line
	-850 6600 -500 6600
Wire Wire Line
	-400 7500 -50  7500
Wire Wire Line
	-750 7500 -400 7500
Wire Wire Line
	-400 8200 -50  8200
Wire Wire Line
	-750 8200 -400 8200
Wire Wire Line
	-400 8900 -50  8900
Wire Wire Line
	-750 8900 -400 8900
Wire Wire Line
	-400 9600 -50  9600
Wire Wire Line
	-750 9600 -400 9600
Wire Wire Line
	-400 10300 -50  10300
Wire Wire Line
	-750 10300 -400 10300
Wire Wire Line
	7950 9250 8050 9250
Wire Wire Line
	7500 9650 7650 9650
Wire Wire Line
	9750 9250 9850 9250
Wire Wire Line
	9300 9650 9450 9650
Wire Wire Line
	7950 10450 8050 10450
Wire Wire Line
	7500 10850 7650 10850
Wire Wire Line
	9700 10450 9800 10450
Wire Wire Line
	9250 10850 9400 10850
Wire Wire Line
	13950 1900 13950 1950
Wire Wire Line
	13950 1900 14250 1900
Wire Wire Line
	13600 1600 13850 1600
Wire Wire Line
	11500 1900 11500 1950
Wire Wire Line
	11500 1900 11800 1900
Wire Wire Line
	11150 1600 11400 1600
Wire Wire Line
	1500 2650 1500 3050
Wire Wire Line
	1500 2650 3300 2650
Wire Wire Line
	3300 2650 4050 2650
Wire Wire Line
	3300 3350 3300 3500
Wire Wire Line
	3300 3150 3300 3350
Wire Wire Line
	4750 3500 5050 3500
Wire Wire Line
	4200 4150 4750 4150
Wire Wire Line
	3950 4150 4200 4150
Wire Wire Line
	4750 4150 5850 4150
Wire Wire Line
	5850 4150 5950 4150
Wire Wire Line
	6350 2650 6450 2650
Wire Wire Line
	7300 2650 7800 2650
Wire Wire Line
	7000 2950 7000 4450
Wire Wire Line
	9500 3200 9500 3300
Wire Wire Line
	4050 2650 6350 2650
Wire Wire Line
	3250 1950 3250 2050
Wire Wire Line
	4800 1750 4800 1800
Wire Wire Line
	9500 2650 9700 2650
Wire Wire Line
	14250 1900 14500 1900
Wire Wire Line
	11800 1900 12050 1900
Wire Wire Line
	12050 1900 12300 1900
Wire Wire Line
	12300 1900 12550 1900
Wire Wire Line
	12550 1900 12800 1900
Wire Wire Line
	12800 1600 12950 1600
Wire Wire Line
	12550 1600 12800 1600
Wire Wire Line
	12300 1600 12550 1600
Wire Wire Line
	12050 1600 12300 1600
Wire Wire Line
	11800 1600 12050 1600
Wire Wire Line
	14250 1600 14500 1600
Wire Wire Line
	14500 1600 14750 1600
Wire Wire Line
	14750 1600 15000 1600
Wire Wire Line
	15000 1600 15250 1600
Wire Wire Line
	15250 1600 15400 1600
Wire Wire Line
	15000 1900 15250 1900
Wire Wire Line
	14750 1900 15000 1900
Wire Wire Line
	14500 1900 14750 1900
Wire Wire Line
	8150 7800 8150 8000
Wire Wire Line
	7700 7800 7800 7800
Wire Wire Line
	4800 1250 4850 1250
Wire Wire Line
	9700 2650 9800 2650
Wire Wire Line
	14450 4300 14450 4400
Wire Wire Line
	14850 3900 15150 3900
Wire Wire Line
	14850 4300 15150 4300
Wire Wire Line
	15150 3900 15150 3950
Wire Wire Line
	850  2650 850  3050
Wire Wire Line
	-500 6200 -500 6350
Wire Wire Line
	-500 6900 -500 7050
Wire Wire Line
	-400 7800 -400 7950
Wire Wire Line
	-400 8500 -400 8650
Wire Wire Line
	-400 9200 -400 9350
Wire Wire Line
	-400 9900 -400 10050
Wire Wire Line
	-400 10600 -400 10750
$Comp
L BMS_Hardware-rescue:R R29
U 1 1 5BCEF41B
P 9500 7500
F 0 "R29" V 9400 7350 50  0000 C CNN
F 1 "4.7k" V 9500 7500 50  0000 C CNN
F 2 "" V 9430 7500 50  0001 C CNN
F 3 "" H 9500 7500 50  0001 C CNN
	1    9500 7500
	0    -1   -1   0   
$EndComp
$Comp
L MRDT_Shields:TM4C129E_Launchpad U?
U 3 1 5BDE4A75
P 13900 6900
F 0 "U?" H 13950 8250 60  0000 L CNN
F 1 "TM4C129E_Launchpad" H 13700 8100 60  0000 L CNN
F 2 "" H 13900 6900 60  0001 C CNN
F 3 "" H 13900 6900 60  0001 C CNN
	3    13900 6900
	1    0    0    -1  
$EndComp
$Comp
L MRDT_Shields:TM4C129E_Launchpad U?
U 4 1 5BDE4FD7
P 14500 6900
F 0 "U?" H 13950 8300 60  0000 C CNN
F 1 "TM4C129E_Launchpad" H 13900 8050 60  0000 C CNN
F 2 "" H 14500 6900 60  0001 C CNN
F 3 "" H 14500 6900 60  0001 C CNN
	4    14500 6900
	-1   0    0    -1  
$EndComp
$Comp
L MRDT_Shields:TM4C129E_Launchpad U?
U 5 1 5BDE539E
P 11450 9150
F 0 "U?" H 11050 10500 60  0000 L CNN
F 1 "TM4C129E_Launchpad" H 10750 10400 60  0000 L CNN
F 2 "" H 11450 9150 60  0001 C CNN
F 3 "" H 11450 9150 60  0001 C CNN
	5    11450 9150
	1    0    0    -1  
$EndComp
$Comp
L MRDT_Shields:TM4C129E_Launchpad U?
U 6 1 5BDE54AD
P 12050 9150
F 0 "U?" H 11950 10550 60  0000 C CNN
F 1 "TM4C129E_Launchpad" H 11650 10400 60  0000 C CNN
F 2 "" H 12050 9150 60  0001 C CNN
F 3 "" H 12050 9150 60  0001 C CNN
	6    12050 9150
	-1   0    0    -1  
$EndComp
$Comp
L MRDT_Shields:TM4C129E_Launchpad U?
U 7 1 5BDE55CC
P 14100 9150
F 0 "U?" H 14050 10450 60  0000 L CNN
F 1 "TM4C129E_Launchpad" H 13650 10350 60  0000 L CNN
F 2 "" H 14100 9150 60  0001 C CNN
F 3 "" H 14100 9150 60  0001 C CNN
	7    14100 9150
	1    0    0    -1  
$EndComp
$Comp
L MRDT_Shields:TM4C129E_Launchpad U?
U 8 1 5BDE56EC
P 14700 9150
F 0 "U?" H 14700 10600 60  0000 C CNN
F 1 "TM4C129E_Launchpad" H 14500 10500 60  0000 C CNN
F 2 "" H 14700 9150 60  0001 C CNN
F 3 "" H 14700 9150 60  0001 C CNN
	8    14700 9150
	-1   0    0    -1  
$EndComp
$Comp
L MRDT_Shields:TM4C129E_Launchpad U?
U 1 1 5C05E831
P 11550 6900
F 0 "U?" H 11100 8350 60  0000 L CNN
F 1 "TM4C129E_Launchpad" H 10900 8150 60  0000 L CNN
F 2 "" H 11550 6900 60  0001 C CNN
F 3 "" H 11550 6900 60  0001 C CNN
	1    11550 6900
	1    0    0    -1  
$EndComp
$Comp
L MRDT_Shields:TM4C129E_Launchpad U?
U 2 1 5C05EA00
P 12150 6900
F 0 "U?" H 12050 8200 60  0000 C CNN
F 1 "TM4C129E_Launchpad" H 11850 8050 60  0000 C CNN
F 2 "" H 12150 6900 60  0001 C CNN
F 3 "" H 12150 6900 60  0001 C CNN
	2    12150 6900
	-1   0    0    -1  
$EndComp
Text GLabel 11350 6550 0    50   Input ~ 0
SER_RX_PB
Text GLabel 11350 6750 0    50   Output ~ 0
SER_TX_PB
Text GLabel 11350 6650 0    50   Input ~ 0
ADC_CELL_A1
Text GLabel 12350 5950 2    50   Input ~ 0
5V
Text GLabel 12350 6050 2    50   UnSpc ~ 0
GND
Text GLabel 12350 6150 2    50   Input ~ 0
ADC_CELL_VOUT
Text GLabel 12350 6250 2    50   Input ~ 0
ADC_CELL_A0
Text GLabel 12350 6350 2    50   Input ~ 0
ADC_CELL_A2
Text GLabel 12350 6450 2    50   Output ~ 0
ADC_CELL_EN
Text GLabel 13700 5950 0    50   Input ~ 0
V_CHECK_ARRAY
Text GLabel 13700 6350 0    50   Output ~ 0
LOGIC_SWITCH
Text GLabel 13700 6450 0    50   Output ~ 0
FAN_CTL_4
Text GLabel 14700 5950 2    50   UnSpc ~ 0
GND
Text GLabel 14700 6050 2    50   Input ~ 0
TEMP_1
Text GLabel 14700 6450 2    50   Input ~ 0
PACK_GATE
Text GLabel 14700 6650 2    50   Output ~ 0
BUZZER
Text GLabel 14700 6150 2    50   Output ~ 0
FAN_CTL_1
Text GLabel 14700 6250 2    50   Output ~ 0
FAN_CTL_2
Text GLabel 14700 6750 2    50   Input ~ 0
PACK_I_MEAS
Text GLabel 14700 6850 2    50   Input ~ 0
V_CHECK_OUT
Text GLabel 14700 6550 2    50   Output ~ 0
FAN_CTL_3
Text GLabel 12250 9100 2    50   Output ~ 0
SER_TX_IND
Text GLabel 11250 8600 0    50   Input ~ 0
CELL_8-7
Text GLabel 11250 8700 0    50   Input ~ 0
CELL_7-6
Text GLabel 12250 8400 2    50   Input ~ 0
CELL_6-5
Text GLabel 12250 8500 2    50   Input ~ 0
CELL_5-4
Text GLabel 12250 8600 2    50   Input ~ 0
CELL_4-3
Text GLabel 12250 8700 2    50   Input ~ 0
CELL_3-2
Text GLabel 12250 8800 2    50   Input ~ 0
CELL_2-1
Text GLabel 12250 8900 2    50   Input ~ 0
CELL_1-GND
Wire Notes Line
	10500 2450 15950 2450
Wire Notes Line
	6150 6600 10500 6600
Wire Notes Line
	600  11350 10550 11350
Wire Notes Line
	15950 9950 10500 9950
Wire Notes Line
	10500 600  10500 11500
Wire Notes Line
	6150 4800 6150 11500
Wire Notes Line
	10500 8400 6150 8400
Wire Notes Line
	8400 8400 8400 6600
Text GLabel 2550 10600 0    51   Input ~ 0
CELL_7
Text GLabel 2500 9850 0    51   Input ~ 0
CELL_6
Text GLabel 2550 9100 0    51   Input ~ 0
CELL_5
Text GLabel 2550 8400 0    51   Input ~ 0
CELL_4
Text GLabel 2550 7700 0    51   Input ~ 0
CELL_3
Text GLabel 2550 7000 0    51   Input ~ 0
CELL_2
Text GLabel 2550 6300 0    51   Input ~ 0
CELL_1
Text Label 12600 5300 0    87   ~ 0
TM4C1294NCPDT
$Comp
L MRDT_ICs:INA132 U?
U 1 1 5BCF3D75
P 3900 5850
F 0 "U?" H 3650 5665 50  0000 C CNN
F 1 "INA132" H 3650 5574 50  0000 C CNN
F 2 "" H 3900 5850 50  0001 C CNN
F 3 "" H 3900 5850 50  0001 C CNN
	1    3900 5850
	1    0    0    -1  
$EndComp
$Comp
L MRDT_ICs:INA132 U?
U 1 1 5BCF3E3D
P 3900 6550
F 0 "U?" H 3650 6365 50  0000 C CNN
F 1 "INA132" H 3650 6274 50  0000 C CNN
F 2 "" H 3900 6550 50  0001 C CNN
F 3 "" H 3900 6550 50  0001 C CNN
	1    3900 6550
	1    0    0    -1  
$EndComp
$Comp
L MRDT_ICs:INA132 U?
U 1 1 5BCF3F0B
P 3900 7250
F 0 "U?" H 3650 7065 50  0000 C CNN
F 1 "INA132" H 3650 6974 50  0000 C CNN
F 2 "" H 3900 7250 50  0001 C CNN
F 3 "" H 3900 7250 50  0001 C CNN
	1    3900 7250
	1    0    0    -1  
$EndComp
$Comp
L MRDT_ICs:INA132 U?
U 1 1 5BCF43BE
P 3900 7950
F 0 "U?" H 3650 7765 50  0000 C CNN
F 1 "INA132" H 3650 7674 50  0000 C CNN
F 2 "" H 3900 7950 50  0001 C CNN
F 3 "" H 3900 7950 50  0001 C CNN
	1    3900 7950
	1    0    0    -1  
$EndComp
$Comp
L MRDT_ICs:INA132 U?
U 1 1 5BCF4486
P 3900 8650
F 0 "U?" H 3650 8465 50  0000 C CNN
F 1 "INA132" H 3650 8374 50  0000 C CNN
F 2 "" H 3900 8650 50  0001 C CNN
F 3 "" H 3900 8650 50  0001 C CNN
	1    3900 8650
	1    0    0    -1  
$EndComp
$Comp
L MRDT_ICs:INA132 U?
U 1 1 5BCF55BB
P 3900 9400
F 0 "U?" H 3650 9215 50  0000 C CNN
F 1 "INA132" H 3650 9124 50  0000 C CNN
F 2 "" H 3900 9400 50  0001 C CNN
F 3 "" H 3900 9400 50  0001 C CNN
	1    3900 9400
	1    0    0    -1  
$EndComp
$Comp
L MRDT_ICs:INA132 U?
U 1 1 5BCF568F
P 3900 10150
F 0 "U?" H 3650 9965 50  0000 C CNN
F 1 "INA132" H 3650 9874 50  0000 C CNN
F 2 "" H 3900 10150 50  0001 C CNN
F 3 "" H 3900 10150 50  0001 C CNN
	1    3900 10150
	1    0    0    -1  
$EndComp
Text GLabel 4350 6400 2    50   Input ~ 0
V_IN
Text GLabel 4350 7100 2    50   Input ~ 0
V_IN
Text GLabel 4350 7800 2    50   Input ~ 0
V_IN
Text GLabel 4350 8500 2    50   Input ~ 0
V_IN
Text GLabel 4350 9200 2    50   Input ~ 0
V_IN
Text GLabel 4350 9950 2    50   Input ~ 0
V_IN
Text GLabel 4350 10700 2    50   Input ~ 0
V_IN
$Comp
L BMS_Hardware-rescue:C C2
U 1 1 5BD0EC8A
P 4150 6250
F 0 "C2" H 4035 6204 50  0000 R CNN
F 1 "1u" H 4035 6295 50  0000 R CNN
F 2 "" H 4188 6100 50  0001 C CNN
F 3 "" H 4150 6250 50  0001 C CNN
	1    4150 6250
	-1   0    0    1   
$EndComp
$Comp
L BMS_Hardware-rescue:C C3
U 1 1 5BD0EE52
P 4150 6950
F 0 "C3" H 4035 6904 50  0000 R CNN
F 1 "1u" H 4035 6995 50  0000 R CNN
F 2 "" H 4188 6800 50  0001 C CNN
F 3 "" H 4150 6950 50  0001 C CNN
	1    4150 6950
	-1   0    0    1   
$EndComp
$Comp
L BMS_Hardware-rescue:C C4
U 1 1 5BD0EF36
P 4150 7650
F 0 "C4" H 4035 7604 50  0000 R CNN
F 1 "1u" H 4035 7695 50  0000 R CNN
F 2 "" H 4188 7500 50  0001 C CNN
F 3 "" H 4150 7650 50  0001 C CNN
	1    4150 7650
	-1   0    0    1   
$EndComp
$Comp
L BMS_Hardware-rescue:C C5
U 1 1 5BD0F595
P 4150 8350
F 0 "C5" H 4035 8304 50  0000 R CNN
F 1 "1u" H 4035 8395 50  0000 R CNN
F 2 "" H 4188 8200 50  0001 C CNN
F 3 "" H 4150 8350 50  0001 C CNN
	1    4150 8350
	-1   0    0    1   
$EndComp
$Comp
L BMS_Hardware-rescue:C C6
U 1 1 5BD0F66D
P 4150 9050
F 0 "C6" H 4035 9004 50  0000 R CNN
F 1 "1u" H 4035 9095 50  0000 R CNN
F 2 "" H 4188 8900 50  0001 C CNN
F 3 "" H 4150 9050 50  0001 C CNN
	1    4150 9050
	-1   0    0    1   
$EndComp
$Comp
L BMS_Hardware-rescue:C C7
U 1 1 5BD0F749
P 4150 9800
F 0 "C7" H 4035 9754 50  0000 R CNN
F 1 "1u" H 4035 9845 50  0000 R CNN
F 2 "" H 4188 9650 50  0001 C CNN
F 3 "" H 4150 9800 50  0001 C CNN
	1    4150 9800
	-1   0    0    1   
$EndComp
$Comp
L BMS_Hardware-rescue:C C8
U 1 1 5BD0FC13
P 4150 10550
F 0 "C8" H 4035 10504 50  0000 R CNN
F 1 "1u" H 4035 10595 50  0000 R CNN
F 2 "" H 4188 10400 50  0001 C CNN
F 3 "" H 4150 10550 50  0001 C CNN
	1    4150 10550
	-1   0    0    1   
$EndComp
Wire Wire Line
	4000 6400 4150 6400
Text GLabel 4350 6100 2    50   UnSpc ~ 0
GND
Text GLabel 4350 9650 2    50   UnSpc ~ 0
GND
Text GLabel 4350 10400 2    50   UnSpc ~ 0
GND
Text GLabel 4350 7500 2    50   UnSpc ~ 0
GND
Text GLabel 4350 6800 2    50   UnSpc ~ 0
GND
Text GLabel 4350 8200 2    50   UnSpc ~ 0
GND
Text GLabel 4350 8900 2    50   UnSpc ~ 0
GND
Wire Wire Line
	4150 6400 4350 6400
Connection ~ 4150 6400
Wire Wire Line
	4000 7100 4150 7100
Wire Wire Line
	4350 7100 4150 7100
Connection ~ 4150 7100
Wire Wire Line
	4000 7800 4150 7800
Connection ~ 4150 7800
Wire Wire Line
	4150 7800 4350 7800
Wire Wire Line
	4000 8500 4150 8500
Connection ~ 4150 8500
Wire Wire Line
	4150 8500 4350 8500
Wire Wire Line
	4000 9200 4150 9200
Connection ~ 4150 9200
Wire Wire Line
	4150 9200 4350 9200
Wire Wire Line
	4000 9950 4150 9950
Connection ~ 4150 9950
Wire Wire Line
	4150 9950 4350 9950
Wire Wire Line
	4000 10700 4150 10700
Connection ~ 4150 10700
Wire Wire Line
	4150 10700 4350 10700
Wire Wire Line
	4150 10400 4350 10400
Wire Wire Line
	4150 9650 4350 9650
Wire Wire Line
	4150 8900 4350 8900
Wire Wire Line
	4150 8200 4350 8200
Wire Wire Line
	4150 7500 4350 7500
Wire Wire Line
	4150 6800 4350 6800
Wire Wire Line
	4350 6100 4150 6100
Text GLabel 3300 10900 0    50   UnSpc ~ 0
GND
Text GLabel 3300 10150 0    50   UnSpc ~ 0
GND
Text GLabel 3300 9400 0    50   UnSpc ~ 0
GND
Text GLabel 3300 8700 0    50   UnSpc ~ 0
GND
Text GLabel 3300 8000 0    50   UnSpc ~ 0
GND
Text GLabel 3300 7300 0    50   UnSpc ~ 0
GND
Text GLabel 3300 6600 0    50   UnSpc ~ 0
GND
Text GLabel 3300 10600 0    50   UnSpc ~ 0
GND
Text GLabel 4600 10800 2    50   Output ~ 0
CELL_8-7
Wire Wire Line
	4000 10800 4100 10800
Wire Wire Line
	4000 10900 4100 10900
Wire Wire Line
	4100 10900 4100 10800
Connection ~ 4100 10800
Wire Wire Line
	4100 10800 4350 10800
Text GLabel 3300 9850 0    50   UnSpc ~ 0
GND
Text GLabel 3300 9100 0    50   UnSpc ~ 0
GND
Text GLabel 3300 8400 0    50   UnSpc ~ 0
GND
Text GLabel 3300 7700 0    50   UnSpc ~ 0
GND
Text GLabel 3300 7000 0    50   UnSpc ~ 0
GND
Text GLabel 3300 6300 0    50   UnSpc ~ 0
GND
Text GLabel 4600 10050 2    50   Output ~ 0
CELL_7-6
Text GLabel 4650 9300 2    50   Output ~ 0
CELL_6-5
Text GLabel 4650 8600 2    50   Output ~ 0
CELL_5-4
Text GLabel 4650 7900 2    50   Output ~ 0
CELL_4-3
Text GLabel 4600 7200 2    50   Output ~ 0
CELL_3-2
Text GLabel 4600 6500 2    50   Output ~ 0
CELL_2-1
Wire Wire Line
	4000 10050 4100 10050
Wire Wire Line
	4100 10150 4100 10050
Wire Wire Line
	4000 10150 4100 10150
Connection ~ 4100 10050
Wire Wire Line
	4100 10050 4350 10050
Wire Wire Line
	4000 9300 4100 9300
Wire Wire Line
	4000 9400 4100 9400
Wire Wire Line
	4100 9400 4100 9300
Connection ~ 4100 9300
Wire Wire Line
	4100 9300 4350 9300
Wire Wire Line
	4000 8600 4100 8600
Wire Wire Line
	4000 8700 4100 8700
Wire Wire Line
	4100 8700 4100 8600
Connection ~ 4100 8600
Wire Wire Line
	4100 8600 4350 8600
Wire Wire Line
	4000 7900 4100 7900
Wire Wire Line
	4000 8000 4100 8000
Wire Wire Line
	4100 8000 4100 7900
Connection ~ 4100 7900
Wire Wire Line
	4100 7900 4350 7900
Wire Wire Line
	4000 7200 4100 7200
Wire Wire Line
	4000 7300 4100 7300
Wire Wire Line
	4100 7300 4100 7200
Connection ~ 4100 7200
Wire Wire Line
	4100 7200 4350 7200
Wire Wire Line
	4000 6500 4100 6500
Wire Wire Line
	4000 6600 4100 6600
Wire Wire Line
	4100 6600 4100 6500
Connection ~ 4100 6500
Wire Wire Line
	4100 6500 4350 6500
$Comp
L BMS_Hardware-rescue:D_Zener D?
U 1 1 5C098242
P 2800 6450
F 0 "D?" H 2800 6550 50  0000 C CNN
F 1 "7.5V" H 2800 6350 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-323_HandSoldering" H 2800 6450 50  0001 C CNN
F 3 "" H 2800 6450 50  0001 C CNN
	1    2800 6450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3000 6400 3300 6400
Connection ~ 2800 6600
Wire Wire Line
	3000 6300 2800 6300
Wire Wire Line
	3000 6300 3000 6400
Wire Wire Line
	2800 6300 2550 6300
Connection ~ 2800 6300
Wire Wire Line
	3000 6600 3000 6500
Wire Wire Line
	3000 6600 2800 6600
Wire Wire Line
	3000 6500 3300 6500
Wire Wire Line
	3300 7100 3000 7100
Wire Wire Line
	3000 7100 3000 7000
Wire Wire Line
	3000 7000 2800 7000
Wire Wire Line
	3300 7200 3000 7200
Wire Wire Line
	3000 7200 3000 7300
Wire Wire Line
	3000 7300 2800 7300
$Comp
L BMS_Hardware-rescue:D_Zener D?
U 1 1 5C257EAA
P 2800 7150
F 0 "D?" H 2800 7250 50  0000 C CNN
F 1 "7.5V" H 2800 7050 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-323_HandSoldering" H 2800 7150 50  0001 C CNN
F 3 "" H 2800 7150 50  0001 C CNN
	1    2800 7150
	0    -1   -1   0   
$EndComp
Connection ~ 2800 7300
Connection ~ 2800 7000
Wire Wire Line
	2800 7000 2550 7000
Wire Wire Line
	3300 7800 3000 7800
Wire Wire Line
	3000 7800 3000 7700
Wire Wire Line
	3000 7700 2800 7700
Wire Wire Line
	3300 7900 3000 7900
Wire Wire Line
	3000 7900 3000 8000
Wire Wire Line
	3000 8000 2800 8000
$Comp
L BMS_Hardware-rescue:D_Zener D?
U 1 1 5C28D3B1
P 2800 7850
F 0 "D?" H 2800 7950 50  0000 C CNN
F 1 "7.5V" H 2800 7750 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-323_HandSoldering" H 2800 7850 50  0001 C CNN
F 3 "" H 2800 7850 50  0001 C CNN
	1    2800 7850
	0    -1   -1   0   
$EndComp
Connection ~ 2800 8000
Connection ~ 2800 7700
Wire Wire Line
	2800 7700 2550 7700
Wire Wire Line
	3300 8500 3000 8500
Wire Wire Line
	3000 8500 3000 8400
Wire Wire Line
	3000 8400 2800 8400
Wire Wire Line
	3000 8600 3000 8700
Wire Wire Line
	3000 8700 2800 8700
Wire Wire Line
	3000 8600 3300 8600
$Comp
L BMS_Hardware-rescue:D_Zener D?
U 1 1 5C2E35F5
P 2800 8550
F 0 "D?" H 2800 8650 50  0000 C CNN
F 1 "7.5V" H 2800 8450 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-323_HandSoldering" H 2800 8550 50  0001 C CNN
F 3 "" H 2800 8550 50  0001 C CNN
	1    2800 8550
	0    -1   -1   0   
$EndComp
Connection ~ 2800 8700
Connection ~ 2800 8400
Wire Wire Line
	2800 8400 2550 8400
Wire Wire Line
	3300 9200 3000 9200
Wire Wire Line
	3000 9200 3000 9100
Wire Wire Line
	3000 9100 2800 9100
Wire Wire Line
	3300 9300 3000 9300
Wire Wire Line
	3000 9300 3000 9400
Wire Wire Line
	3000 9400 2800 9400
$Comp
L BMS_Hardware-rescue:D_Zener D?
U 1 1 5C31FB8D
P 2800 9250
F 0 "D?" H 2800 9350 50  0000 C CNN
F 1 "7.5V" H 2800 9150 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-323_HandSoldering" H 2800 9250 50  0001 C CNN
F 3 "" H 2800 9250 50  0001 C CNN
	1    2800 9250
	0    -1   -1   0   
$EndComp
Connection ~ 2800 9400
Connection ~ 2800 9100
Wire Wire Line
	2800 9100 2550 9100
Wire Wire Line
	3300 9950 3000 9950
Wire Wire Line
	3000 9950 3000 9850
Wire Wire Line
	3000 9850 2750 9850
Wire Wire Line
	3300 10050 3000 10050
Wire Wire Line
	3000 10050 3000 10150
Wire Wire Line
	3000 10150 2750 10150
$Comp
L BMS_Hardware-rescue:D_Zener D?
U 1 1 5C3600CA
P 2750 10000
F 0 "D?" H 2750 10100 50  0000 C CNN
F 1 "7.5V" H 2750 9900 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-323_HandSoldering" H 2750 10000 50  0001 C CNN
F 3 "" H 2750 10000 50  0001 C CNN
	1    2750 10000
	0    -1   -1   0   
$EndComp
Connection ~ 2750 10150
Connection ~ 2750 9850
Wire Wire Line
	2750 9850 2500 9850
Wire Wire Line
	3300 10700 3000 10700
Wire Wire Line
	3000 10700 3000 10600
Wire Wire Line
	3000 10600 2800 10600
Wire Wire Line
	3300 10800 3000 10800
Wire Wire Line
	3000 10800 3000 10900
Wire Wire Line
	3000 10900 2800 10900
$Comp
L BMS_Hardware-rescue:D_Zener D?
U 1 1 5C3A4330
P 2800 10750
F 0 "D?" H 2800 10850 50  0000 C CNN
F 1 "7.5V" H 2800 10650 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-323_HandSoldering" H 2800 10750 50  0001 C CNN
F 3 "" H 2800 10750 50  0001 C CNN
	1    2800 10750
	0    -1   -1   0   
$EndComp
Connection ~ 2800 10900
Connection ~ 2800 10600
Wire Wire Line
	2800 10600 2550 10600
$Comp
L BMS_Hardware-rescue:C C?
U 1 1 5C3A6E87
P 2050 6450
F 0 "C?" H 1935 6404 50  0000 R CNN
F 1 "1u" H 1935 6495 50  0000 R CNN
F 2 "" H 2088 6300 50  0001 C CNN
F 3 "" H 2050 6450 50  0001 C CNN
	1    2050 6450
	-1   0    0    1   
$EndComp
Wire Wire Line
	2050 6600 2800 6600
$Comp
L BMS_Hardware-rescue:C C?
U 1 1 5C3C9F1F
P 2050 7150
F 0 "C?" H 1935 7104 50  0000 R CNN
F 1 "1u" H 1935 7195 50  0000 R CNN
F 2 "" H 2088 7000 50  0001 C CNN
F 3 "" H 2050 7150 50  0001 C CNN
	1    2050 7150
	-1   0    0    1   
$EndComp
Wire Wire Line
	2050 7300 2800 7300
$Comp
L BMS_Hardware-rescue:C C?
U 1 1 5C3ED605
P 2050 7850
F 0 "C?" H 1935 7804 50  0000 R CNN
F 1 "1u" H 1935 7895 50  0000 R CNN
F 2 "" H 2088 7700 50  0001 C CNN
F 3 "" H 2050 7850 50  0001 C CNN
	1    2050 7850
	-1   0    0    1   
$EndComp
Wire Wire Line
	2050 8000 2800 8000
$Comp
L BMS_Hardware-rescue:C C?
U 1 1 5C411168
P 2050 8550
F 0 "C?" H 1935 8504 50  0000 R CNN
F 1 "1u" H 1935 8595 50  0000 R CNN
F 2 "" H 2088 8400 50  0001 C CNN
F 3 "" H 2050 8550 50  0001 C CNN
	1    2050 8550
	-1   0    0    1   
$EndComp
Wire Wire Line
	2050 8700 2800 8700
$Comp
L BMS_Hardware-rescue:C C?
U 1 1 5C4341C9
P 2050 9250
F 0 "C?" H 1935 9204 50  0000 R CNN
F 1 "1u" H 1935 9295 50  0000 R CNN
F 2 "" H 2088 9100 50  0001 C CNN
F 3 "" H 2050 9250 50  0001 C CNN
	1    2050 9250
	-1   0    0    1   
$EndComp
$Comp
L BMS_Hardware-rescue:C C?
U 1 1 5C435004
P 2000 10000
F 0 "C?" H 1885 9954 50  0000 R CNN
F 1 "1u" H 1885 10045 50  0000 R CNN
F 2 "" H 2038 9850 50  0001 C CNN
F 3 "" H 2000 10000 50  0001 C CNN
	1    2000 10000
	-1   0    0    1   
$EndComp
$Comp
L BMS_Hardware-rescue:C C?
U 1 1 5C435A9A
P 2050 10750
F 0 "C?" H 1935 10704 50  0000 R CNN
F 1 "1u" H 1935 10795 50  0000 R CNN
F 2 "" H 2088 10600 50  0001 C CNN
F 3 "" H 2050 10750 50  0001 C CNN
	1    2050 10750
	-1   0    0    1   
$EndComp
Wire Wire Line
	2050 10900 2800 10900
Wire Wire Line
	2000 10150 2750 10150
Wire Wire Line
	2050 9400 2800 9400
Connection ~ 3250 5650
$EndSCHEMATC

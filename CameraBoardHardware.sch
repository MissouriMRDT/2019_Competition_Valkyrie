EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:MRDT_Actives
LIBS:MRDT_Connectors
LIBS:MRDT_Devices
LIBS:MRDT_Drill_Holes
LIBS:MRDT_Headers
LIBS:MRDT_ICs
LIBS:MRDT_Passives
LIBS:MRDT_Shields
LIBS:MRDT_Silkscreens
LIBS:MRDT_Switches
LIBS:MAX3392EEUD
LIBS:MAX4311EEE
LIBS:LMH6574MANOPB
LIBS:TXB0102DCUR
LIBS:BNC-75-Ohm-HORIZONTAL
LIBS:CameraBoardHardware-cache
EELAYER 25 0
EELAYER END
$Descr A 8500 11000 portrait
encoding utf-8
Sheet 1 1
Title "CameraBoardHardware"
Date ""
Rev "1"
Comp "MissouriMRDT"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 2600 9200 1    60   UnSpc ~ 0
12VA
$Comp
L C C3
U 1 1 5AB9B0C0
P 1300 8050
F 0 "C3" H 1325 8150 50  0000 L CNN
F 1 "10uf" H 1325 7950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1338 7900 50  0001 C CNN
F 3 "" H 1300 8050 50  0001 C CNN
	1    1300 8050
	-1   0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 5AB9B123
P 1550 8050
F 0 "C6" H 1575 8150 50  0000 L CNN
F 1 "10uf" H 1575 7950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1588 7900 50  0001 C CNN
F 3 "" H 1550 8050 50  0001 C CNN
	1    1550 8050
	-1   0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 5AB9B16A
P 1800 8050
F 0 "C10" H 1825 8150 50  0000 L CNN
F 1 "10uf" H 1825 7950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1838 7900 50  0001 C CNN
F 3 "" H 1800 8050 50  0001 C CNN
	1    1800 8050
	-1   0    0    -1  
$EndComp
$Comp
L C C13
U 1 1 5AB9B1BF
P 2050 8050
F 0 "C13" H 2075 8150 50  0000 L CNN
F 1 "10uf" H 2075 7950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2088 7900 50  0001 C CNN
F 3 "" H 2050 8050 50  0001 C CNN
	1    2050 8050
	-1   0    0    -1  
$EndComp
$Comp
L C C16
U 1 1 5AB9B1FC
P 2300 8050
F 0 "C16" H 2325 8150 50  0000 L CNN
F 1 "10uf" H 2325 7950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2338 7900 50  0001 C CNN
F 3 "" H 2300 8050 50  0001 C CNN
	1    2300 8050
	-1   0    0    -1  
$EndComp
$Comp
L C C19
U 1 1 5AB9B23D
P 2550 8050
F 0 "C19" H 2575 8150 50  0000 L CNN
F 1 "0.1uf" H 2575 7950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2588 7900 50  0001 C CNN
F 3 "" H 2550 8050 50  0001 C CNN
	1    2550 8050
	-1   0    0    -1  
$EndComp
$Comp
L OKI U9
U 1 1 5AB9B535
P 2950 9400
F 0 "U9" H 2800 9150 60  0001 C CNN
F 1 "OKI" H 3100 9750 60  0000 C CNN
F 2 "MRDT_Devices:OKI_Horisontal" H 2700 9300 60  0001 C CNN
F 3 "" H 2700 9300 60  0001 C CNN
	1    2950 9400
	1    0    0    1   
$EndComp
Text GLabel 2450 9200 1    60   UnSpc ~ 0
12V
Text GLabel 2750 9200 1    60   UnSpc ~ 0
5V
Text GLabel 4650 6750 0    60   UnSpc ~ 0
5V
$Comp
L R R9
U 1 1 5AB9D92A
P 6650 5100
F 0 "R9" V 6730 5100 50  0000 C CNN
F 1 "75" V 6650 5100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6580 5100 50  0001 C CNN
F 3 "" H 6650 5100 50  0001 C CNN
	1    6650 5100
	0    -1   -1   0   
$EndComp
Text GLabel 2300 9200 1    60   UnSpc ~ 0
Gnd
$Comp
L Anderson_3 C8
U 1 1 5AB9B04F
P 2050 10150
F 0 "C8" H 2100 10100 60  0000 C CNN
F 1 "Anderson_3" H 2200 10900 60  0000 C CNN
F 2 "MRDT_Connectors:Anderson_3_Horisontal_Side_by_Side" H 2100 9600 60  0001 C CNN
F 3 "" H 2100 9600 60  0001 C CNN
	1    2050 10150
	-1   0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5ABB5CA6
P 1300 8650
F 0 "C4" H 1325 8750 50  0000 L CNN
F 1 "10uf" H 1325 8550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1338 8500 50  0001 C CNN
F 3 "" H 1300 8650 50  0001 C CNN
	1    1300 8650
	-1   0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 5ABB5CAC
P 1550 8650
F 0 "C7" H 1575 8750 50  0000 L CNN
F 1 "10uf" H 1575 8550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1588 8500 50  0001 C CNN
F 3 "" H 1550 8650 50  0001 C CNN
	1    1550 8650
	-1   0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 5ABB5CB2
P 1800 8650
F 0 "C11" H 1825 8750 50  0000 L CNN
F 1 "10uf" H 1825 8550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1838 8500 50  0001 C CNN
F 3 "" H 1800 8650 50  0001 C CNN
	1    1800 8650
	-1   0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 5ABB5CB8
P 2050 8650
F 0 "C14" H 2075 8750 50  0000 L CNN
F 1 "10uf" H 2075 8550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2088 8500 50  0001 C CNN
F 3 "" H 2050 8650 50  0001 C CNN
	1    2050 8650
	-1   0    0    -1  
$EndComp
$Comp
L C C17
U 1 1 5ABB5CBE
P 2300 8650
F 0 "C17" H 2325 8750 50  0000 L CNN
F 1 "10uf" H 2325 8550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2338 8500 50  0001 C CNN
F 3 "" H 2300 8650 50  0001 C CNN
	1    2300 8650
	-1   0    0    -1  
$EndComp
$Comp
L C C20
U 1 1 5ABB5CC4
P 2550 8650
F 0 "C20" H 2575 8750 50  0000 L CNN
F 1 "0.1uf" H 2575 8550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2588 8500 50  0001 C CNN
F 3 "" H 2550 8650 50  0001 C CNN
	1    2550 8650
	-1   0    0    -1  
$EndComp
Text GLabel 1050 7900 0    60   UnSpc ~ 0
5V
Text GLabel 1050 8200 0    60   UnSpc ~ 0
Gnd
Text GLabel 1050 8500 0    60   UnSpc ~ 0
12V
Text GLabel 1050 8800 0    60   UnSpc ~ 0
Gnd
Connection ~ 1300 7900
Connection ~ 1550 7900
Connection ~ 1800 7900
Connection ~ 2050 7900
Connection ~ 2300 7900
Connection ~ 2300 8200
Connection ~ 2050 8200
Connection ~ 1800 8200
Connection ~ 1550 8200
Connection ~ 1300 8200
Connection ~ 2550 7900
Connection ~ 2550 8200
Wire Wire Line
	2750 9200 2750 9450
Connection ~ 1300 8500
Connection ~ 1550 8500
Connection ~ 1800 8500
Connection ~ 2050 8500
Connection ~ 2300 8500
Connection ~ 2300 8800
Connection ~ 2050 8800
Connection ~ 1800 8800
Connection ~ 1550 8800
Connection ~ 1300 8800
Connection ~ 2550 8500
Connection ~ 2550 8800
Wire Wire Line
	1050 8500 2550 8500
Wire Wire Line
	1050 8800 2550 8800
Wire Wire Line
	1050 8200 2550 8200
Wire Wire Line
	2300 9200 2300 9550
Connection ~ 2300 9550
Wire Wire Line
	2450 9800 2450 9200
Wire Wire Line
	2450 9650 2750 9650
Connection ~ 2450 9650
Wire Wire Line
	2600 10050 2600 9200
Connection ~ 2150 9550
Connection ~ 2150 9800
$Comp
L TM4C129E_Launchpad_X7 U11
U 1 1 5ABAC3AE
P 4550 8850
F 0 "U11" H 4650 8800 60  0001 C CNN
F 1 "TM4C129E_Launchpad_X7" H 5100 8800 60  0000 C CNN
F 2 "MRDT_Shields:TM4C129E_Launchpad_X7_Bottom_SMD" H 4550 8850 60  0001 C CNN
F 3 "" H 4550 8850 60  0001 C CNN
	1    4550 8850
	1    0    0    -1  
$EndComp
Text GLabel 5350 7900 2    60   UnSpc ~ 0
5V
Wire Wire Line
	5250 7900 5350 7900
Text GLabel 4250 7900 0    60   UnSpc ~ 0
3.3V
Text GLabel 5350 8000 2    60   UnSpc ~ 0
Gnd
Wire Wire Line
	4250 7900 4350 7900
Wire Wire Line
	5250 8000 5350 8000
Text GLabel 7500 7900 2    60   UnSpc ~ 0
Gnd
Wire Wire Line
	7350 7900 7500 7900
Text GLabel 6250 6750 2    60   UnSpc ~ 0
Gnd
Text GLabel 6250 6850 2    60   UnSpc ~ 0
3.3V
Connection ~ 2150 10050
Wire Wire Line
	6250 6750 6050 6750
Wire Wire Line
	6050 6850 6250 6850
Wire Wire Line
	4850 6750 4650 6750
$Comp
L R R6
U 1 1 5ABAF6C7
P 4400 7050
F 0 "R6" V 4480 7050 50  0000 C CNN
F 1 "100k" V 4400 7050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4330 7050 50  0001 C CNN
F 3 "" H 4400 7050 50  0001 C CNN
	1    4400 7050
	-1   0    0    1   
$EndComp
Text GLabel 4300 6850 0    60   Input ~ 0
OE
Text GLabel 4650 6950 0    60   Input ~ 0
A1
Text GLabel 4650 6650 0    60   Output ~ 0
B1
Text GLabel 6250 6650 2    60   Output ~ 0
B2
Text GLabel 6250 6950 2    60   Input ~ 0
A2
Wire Wire Line
	6050 6650 6250 6650
Wire Wire Line
	6050 6950 6250 6950
Wire Wire Line
	4650 6650 4850 6650
Wire Wire Line
	4650 6950 4850 6950
Text GLabel 4400 7250 3    60   UnSpc ~ 0
Gnd
Text GLabel 5400 5500 2    60   UnSpc ~ 0
Gnd
Text GLabel 5400 5600 2    60   UnSpc ~ 0
Gnd
Wire Wire Line
	5300 5500 5400 5500
Wire Wire Line
	5300 5600 5400 5600
Text GLabel 5400 5200 2    60   UnSpc ~ 0
12V
Wire Wire Line
	5300 5200 5400 5200
Text GLabel 4100 5300 0    60   UnSpc ~ 0
Gnd
Text GLabel 4100 5500 0    60   UnSpc ~ 0
Gnd
Text GLabel 4100 5700 0    60   UnSpc ~ 0
Gnd
Wire Wire Line
	4100 5300 4250 5300
Wire Wire Line
	4100 5500 4250 5500
Wire Wire Line
	4100 5700 4250 5700
$Comp
L R R7
U 1 1 5ABB2509
P 6400 5300
F 0 "R7" V 6480 5300 50  0000 C CNN
F 1 "470" V 6400 5300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6330 5300 50  0001 C CNN
F 3 "" H 6400 5300 50  0001 C CNN
	1    6400 5300
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5ABB269B
P 6400 5700
F 0 "R8" V 6480 5700 50  0000 C CNN
F 1 "470" V 6400 5700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6330 5700 50  0001 C CNN
F 3 "" H 6400 5700 50  0001 C CNN
	1    6400 5700
	1    0    0    -1  
$EndComp
Text GLabel 5400 5700 2    60   Input ~ 0
A1
Text GLabel 5400 5800 2    60   Input ~ 0
A0
Wire Wire Line
	5300 5700 5400 5700
Wire Wire Line
	5300 5800 5400 5800
Wire Wire Line
	4300 6850 4850 6850
Connection ~ 4400 6850
Text GLabel 6350 8100 0    60   Output ~ 0
A2
Text GLabel 6350 7900 0    60   Output ~ 0
OE
Text GLabel 6350 8000 0    60   Output ~ 0
A1
Wire Wire Line
	6350 7900 6450 7900
Wire Wire Line
	6350 8000 6450 8000
Wire Wire Line
	6350 8100 6450 8100
Wire Wire Line
	4400 6900 4400 6850
Wire Wire Line
	4400 7200 4400 7250
Wire Wire Line
	6400 5450 6400 5550
Wire Wire Line
	6400 5150 6400 5100
Wire Wire Line
	6100 5100 6500 5100
Text GLabel 6400 5900 3    60   UnSpc ~ 0
Gnd
Wire Wire Line
	6100 5500 6400 5500
Connection ~ 6400 5500
Wire Wire Line
	6400 5850 6400 5900
Connection ~ 6400 5100
Text GLabel 7000 5100 2    60   Output ~ 0
Video_Out
Wire Wire Line
	6800 5100 7000 5100
Wire Wire Line
	6100 5300 6100 5100
Wire Wire Line
	6100 5400 6100 5500
Text GLabel 3350 4300 0    60   Input ~ 0
Camera1_In
$Comp
L R R1
U 1 1 5ABB6119
P 3400 4500
F 0 "R1" V 3480 4500 50  0000 C CNN
F 1 "75" V 3400 4500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3330 4500 50  0001 C CNN
F 3 "" H 3400 4500 50  0001 C CNN
	1    3400 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4300 3400 4350
Connection ~ 3400 4300
Text GLabel 3400 4700 3    60   UnSpc ~ 0
Gnd
Wire Wire Line
	3400 4650 3400 4700
Wire Wire Line
	3350 4300 3750 4300
Text GLabel 3350 5050 0    60   Input ~ 0
Camera2_In
$Comp
L R R2
U 1 1 5ABB627D
P 3400 5250
F 0 "R2" V 3480 5250 50  0000 C CNN
F 1 "75" V 3400 5250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3330 5250 50  0001 C CNN
F 3 "" H 3400 5250 50  0001 C CNN
	1    3400 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 5050 3400 5100
Connection ~ 3400 5050
Text GLabel 3400 5450 3    60   UnSpc ~ 0
Gnd
Wire Wire Line
	3400 5400 3400 5450
Wire Wire Line
	3350 5050 3600 5050
Text GLabel 3350 5800 0    60   Input ~ 0
Camera3_In
$Comp
L R R3
U 1 1 5ABB62E6
P 3400 6000
F 0 "R3" V 3480 6000 50  0000 C CNN
F 1 "75" V 3400 6000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3330 6000 50  0001 C CNN
F 3 "" H 3400 6000 50  0001 C CNN
	1    3400 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 5800 3400 5850
Connection ~ 3400 5800
Text GLabel 3400 6200 3    60   UnSpc ~ 0
Gnd
Wire Wire Line
	3400 6150 3400 6200
Wire Wire Line
	3350 5800 3600 5800
Text GLabel 3350 6550 0    60   Input ~ 0
Camera4_In
$Comp
L R R4
U 1 1 5ABB635B
P 3400 6750
F 0 "R4" V 3480 6750 50  0000 C CNN
F 1 "75" V 3400 6750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3330 6750 50  0001 C CNN
F 3 "" H 3400 6750 50  0001 C CNN
	1    3400 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 6550 3400 6600
Connection ~ 3400 6550
Text GLabel 3400 7000 3    60   UnSpc ~ 0
Gnd
Wire Wire Line
	3350 6550 3800 6550
Wire Wire Line
	3400 6900 3400 7000
Wire Wire Line
	3600 5050 3600 5400
Wire Wire Line
	3600 5800 3600 5600
Wire Wire Line
	3750 4300 3750 5200
Wire Wire Line
	3800 6550 3800 5800
$Comp
L C C2
U 1 1 5ABB7599
P 1300 7550
F 0 "C2" H 1325 7650 50  0000 L CNN
F 1 "10uf" H 1325 7450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1338 7400 50  0001 C CNN
F 3 "" H 1300 7550 50  0001 C CNN
	1    1300 7550
	-1   0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5ABB759F
P 1550 7550
F 0 "C5" H 1575 7650 50  0000 L CNN
F 1 "10uf" H 1575 7450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1588 7400 50  0001 C CNN
F 3 "" H 1550 7550 50  0001 C CNN
	1    1550 7550
	-1   0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 5ABB75A5
P 1800 7550
F 0 "C9" H 1825 7650 50  0000 L CNN
F 1 "10uf" H 1825 7450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1838 7400 50  0001 C CNN
F 3 "" H 1800 7550 50  0001 C CNN
	1    1800 7550
	-1   0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 5ABB75AB
P 2050 7550
F 0 "C12" H 2075 7650 50  0000 L CNN
F 1 "10uf" H 2075 7450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2088 7400 50  0001 C CNN
F 3 "" H 2050 7550 50  0001 C CNN
	1    2050 7550
	-1   0    0    -1  
$EndComp
$Comp
L C C15
U 1 1 5ABB75B1
P 2300 7550
F 0 "C15" H 2325 7650 50  0000 L CNN
F 1 "10uf" H 2325 7450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2338 7400 50  0001 C CNN
F 3 "" H 2300 7550 50  0001 C CNN
	1    2300 7550
	-1   0    0    -1  
$EndComp
$Comp
L C C18
U 1 1 5ABB75B7
P 2550 7550
F 0 "C18" H 2575 7650 50  0000 L CNN
F 1 "0.1uf" H 2575 7450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2588 7400 50  0001 C CNN
F 3 "" H 2550 7550 50  0001 C CNN
	1    2550 7550
	-1   0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5ABB75BD
P 2800 7400
F 0 "R5" V 2880 7400 50  0000 C CNN
F 1 "330" V 2800 7400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2730 7400 50  0001 C CNN
F 3 "" H 2800 7400 50  0001 C CNN
	1    2800 7400
	0    1    -1   0   
$EndComp
$Comp
L LED D1
U 1 1 5ABB75C3
P 3050 7550
F 0 "D1" H 3050 7650 50  0000 C CNN
F 1 "LED" H 3050 7450 50  0000 C CNN
F 2 "LEDs:LED_0603_HandSoldering" H 3050 7550 50  0001 C CNN
F 3 "" H 3050 7550 50  0001 C CNN
	1    3050 7550
	0    1    -1   0   
$EndComp
Text GLabel 1050 7400 0    60   UnSpc ~ 0
3.3V
Text GLabel 1050 7700 0    60   UnSpc ~ 0
Gnd
Connection ~ 1300 7400
Connection ~ 1550 7400
Connection ~ 1800 7400
Connection ~ 2050 7400
Connection ~ 2300 7400
Connection ~ 2300 7700
Connection ~ 2050 7700
Connection ~ 1800 7700
Connection ~ 1550 7700
Connection ~ 1300 7700
Connection ~ 2550 7400
Connection ~ 2550 7700
Wire Wire Line
	1050 7400 2650 7400
Wire Wire Line
	1050 7700 3050 7700
Wire Wire Line
	3050 7400 2950 7400
Wire Wire Line
	1050 7900 2550 7900
$Comp
L Picoblade_3 U4
U 1 1 5ABB9AAA
P 1550 6300
F 0 "U4" H 1600 6250 60  0001 C CNN
F 1 "Picoblade_3" H 1600 6650 60  0000 C CNN
F 2 "Connectors_Molex:Molex_PicoBlade_53047-0310_03x1.25mm_Straight" H 1550 6300 60  0001 C CNN
F 3 "" H 1550 6300 60  0001 C CNN
	1    1550 6300
	-1   0    0    1   
$EndComp
Text GLabel 1900 6550 2    60   Input ~ 0
Camera1_In
Text GLabel 1900 6450 2    60   UnSpc ~ 0
Gnd
Text GLabel 1900 6350 2    60   UnSpc ~ 0
12V
Wire Wire Line
	1900 6350 1750 6350
Wire Wire Line
	1900 6450 1750 6450
Wire Wire Line
	1900 6550 1750 6550
Wire Wire Line
	1050 6550 1800 6550
Connection ~ 1800 6550
Wire Wire Line
	1050 6450 1800 6450
Connection ~ 1800 6450
Wire Wire Line
	1050 6350 1800 6350
Connection ~ 1800 6350
$Comp
L Molex_SL_3 U7
U 1 1 5ABBB877
P 850 5550
F 0 "U7" H 900 5500 60  0001 C CNN
F 1 "Molex_SL_3" H 900 5900 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_3_Horizontal" H 850 5550 60  0001 C CNN
F 3 "" H 850 5550 60  0001 C CNN
	1    850  5550
	-1   0    0    1   
$EndComp
$Comp
L Picoblade_3 U3
U 1 1 5ABBB87D
P 1550 5550
F 0 "U3" H 1600 5500 60  0001 C CNN
F 1 "Picoblade_3" H 1600 5900 60  0000 C CNN
F 2 "Connectors_Molex:Molex_PicoBlade_53047-0310_03x1.25mm_Straight" H 1550 5550 60  0001 C CNN
F 3 "" H 1550 5550 60  0001 C CNN
	1    1550 5550
	-1   0    0    1   
$EndComp
Text GLabel 1900 5800 2    60   Input ~ 0
Camera2_In
Text GLabel 1900 5700 2    60   UnSpc ~ 0
Gnd
Text GLabel 1900 5600 2    60   UnSpc ~ 0
12V
Wire Wire Line
	1900 5600 1750 5600
Wire Wire Line
	1900 5700 1750 5700
Wire Wire Line
	1900 5800 1750 5800
Wire Wire Line
	1050 5800 1800 5800
Connection ~ 1800 5800
Wire Wire Line
	1050 5700 1800 5700
Connection ~ 1800 5700
Wire Wire Line
	1050 5600 1800 5600
Connection ~ 1800 5600
$Comp
L Molex_SL_3 U6
U 1 1 5ABBB8D1
P 850 4800
F 0 "U6" H 900 4750 60  0001 C CNN
F 1 "Molex_SL_3" H 900 5150 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_3_Horizontal" H 850 4800 60  0001 C CNN
F 3 "" H 850 4800 60  0001 C CNN
	1    850  4800
	-1   0    0    1   
$EndComp
$Comp
L Picoblade_3 U2
U 1 1 5ABBB8D7
P 1550 4800
F 0 "U2" H 1600 4750 60  0001 C CNN
F 1 "Picoblade_3" H 1600 5150 60  0000 C CNN
F 2 "Connectors_Molex:Molex_PicoBlade_53047-0310_03x1.25mm_Straight" H 1550 4800 60  0001 C CNN
F 3 "" H 1550 4800 60  0001 C CNN
	1    1550 4800
	-1   0    0    1   
$EndComp
Text GLabel 1900 5050 2    60   Input ~ 0
Camera3_In
Text GLabel 1900 4950 2    60   UnSpc ~ 0
Gnd
Text GLabel 1900 4850 2    60   UnSpc ~ 0
12V
Wire Wire Line
	1900 4850 1750 4850
Wire Wire Line
	1900 4950 1750 4950
Wire Wire Line
	1900 5050 1750 5050
Wire Wire Line
	1050 5050 1800 5050
Connection ~ 1800 5050
Wire Wire Line
	1050 4950 1800 4950
Connection ~ 1800 4950
Connection ~ 1800 4850
$Comp
L Molex_SL_3 U5
U 1 1 5ABBB96D
P 850 4150
F 0 "U5" H 900 4100 60  0001 C CNN
F 1 "Molex_SL_3" H 900 4500 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_3_Horizontal" H 850 4150 60  0001 C CNN
F 3 "" H 850 4150 60  0001 C CNN
	1    850  4150
	-1   0    0    1   
$EndComp
Text GLabel 1900 4400 2    60   Input ~ 0
Camera4_In
Text GLabel 1900 4300 2    60   UnSpc ~ 0
Gnd
Text GLabel 1900 4200 2    60   UnSpc ~ 0
12V
Wire Wire Line
	1900 4300 1750 4300
Wire Wire Line
	1900 4400 1750 4400
Wire Wire Line
	1800 4400 1050 4400
Connection ~ 1800 4400
Wire Wire Line
	1050 4300 1800 4300
Connection ~ 1800 4300
Text GLabel 5650 4250 0    60   Input ~ 0
Video_Out
Wire Wire Line
	5650 4250 6050 4250
Text GLabel 5600 4350 0    60   UnSpc ~ 0
Gnd
Wire Wire Line
	6050 4350 5600 4350
$Comp
L Molex_SL_3 U8
U 1 1 5ABB9A12
P 850 6300
F 0 "U8" H 900 6250 60  0001 C CNN
F 1 "Molex_SL_3" H 900 6650 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_3_Horizontal" H 850 6300 60  0001 C CNN
F 3 "" H 850 6300 60  0001 C CNN
	1    850  6300
	-1   0    0    1   
$EndComp
Wire Wire Line
	1050 4850 1800 4850
Wire Wire Line
	2150 9550 2750 9550
Wire Wire Line
	1550 9800 2450 9800
Wire Wire Line
	2150 10050 2600 10050
$Comp
L Molex_SL_3 U13
U 1 1 5AD035C7
P 850 9650
F 0 "U13" H 900 9600 60  0001 C CNN
F 1 "Molex_SL_3" H 900 10000 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_3_Horizontal" H 850 9650 60  0001 C CNN
F 3 "" H 850 9650 60  0001 C CNN
	1    850  9650
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 9700 2150 9700
Wire Wire Line
	2150 9700 2150 9550
Wire Wire Line
	1550 9900 2150 9900
Wire Wire Line
	2150 9900 2150 10050
$Comp
L Picoblade_3 U14
U 1 1 5AD05B9A
P 1350 9950
F 0 "U14" H 1400 9900 60  0001 C CNN
F 1 "Picoblade_3" H 1400 10300 60  0000 C CNN
F 2 "Connectors_Molex:Molex_PicoBlade_53047-0310_03x1.25mm_Straight" H 1350 9950 60  0001 C CNN
F 3 "" H 1350 9950 60  0001 C CNN
	1    1350 9950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1050 9700 1650 9700
Connection ~ 1650 9700
Wire Wire Line
	1050 9800 1650 9800
Connection ~ 1650 9800
Wire Wire Line
	1050 9900 1650 9900
Connection ~ 1650 9900
$Comp
L Picoblade_3 U1
U 1 1 5ABBB973
P 1550 4150
F 0 "U1" H 1600 4100 60  0001 C CNN
F 1 "Picoblade_3" H 1600 4500 60  0000 C CNN
F 2 "Connectors_Molex:Molex_PicoBlade_53047-0310_03x1.25mm_Straight" H 1550 4150 60  0001 C CNN
F 3 "" H 1550 4150 60  0001 C CNN
	1    1550 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	1900 4200 1750 4200
Wire Wire Line
	1050 4200 1800 4200
Connection ~ 1800 4200
$Comp
L BNC_75_OHM_HORIZ J1
U 1 1 5ACFF86F
P 6550 4450
F 0 "J1" H 6400 4400 60  0000 C CNN
F 1 "BNC_75_OHM_HORIZ" H 6400 4800 60  0000 C CNN
F 2 "BNC-75-Ohm-HORIZONTAL:BNC-75-Ohm-HORIZONTAL-1-1478032-0" H 5450 4300 60  0001 C CNN
F 3 "" H 6050 4650 60  0000 C CNN
	1    6550 4450
	1    0    0    -1  
$EndComp
$Comp
L LMH6574MA U10
U 1 1 5AD01054
P 5000 5900
F 0 "U10" H 4750 5850 60  0000 C CNN
F 1 "LMH6574MA" H 4750 6750 60  0000 C CNN
F 2 "LMH6574MANOPB:LMH6574MA&slash_NOPB" V 5750 5950 60  0001 C CNN
F 3 "" H 4250 6550 60  0000 C CNN
	1    5000 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 5200 4250 5200
Wire Wire Line
	3600 5400 4250 5400
Wire Wire Line
	3600 5600 4250 5600
Wire Wire Line
	3800 5800 4250 5800
$Comp
L TXB0102_DCU_8 U12
U 1 1 5AD027A6
P 5750 7050
F 0 "U12" H 5450 7000 60  0000 C CNN
F 1 "TXB0102_DCU_8" H 5450 7600 60  0000 C CNN
F 2 "TXB0102DCUR:TXB0102DCUR" H 6300 7500 60  0001 C CNN
F 3 "" H 4850 7450 60  0000 C CNN
	1    5750 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 5300 6100 5300
Wire Wire Line
	5300 5400 6100 5400
$EndSCHEMATC

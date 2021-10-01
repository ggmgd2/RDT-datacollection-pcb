EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Data Collection PCB Schematic"
Date "2021-09-30"
Rev "1.0.0"
Comp "Missouri S&T Rocket Design Team '21 (Thomas Francois)"
Comment1 "https://github.com/MSTRocketDesignTeam/Avionics-Data-Collection-PCB"
Comment2 "Intended as initial pre-production design"
Comment3 "Schematic depicting component logical connections between components"
Comment4 ""
$EndDescr
$Comp
L Sensor_Pressure:MS5607-02BA U?
U 1 1 61564FE0
P 7100 3600
F 0 "U?" H 7050 4400 50  0000 L CNN
F 1 "MS5607-02BA" H 6800 4300 50  0000 L CNN
F 2 "Package_LGA:LGA-8_3x5mm_P1.25mm" H 7100 3600 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=showdoc&DocId=Data+Sheet%7FMS5607-02BA03%7FB2%7Fpdf%7FEnglish%7FENG_DS_MS5607-02BA03_B2.pdf%7FCAT-BLPS0035" H 7100 3600 50  0001 C CNN
F 4 "Barometer IC" H 6900 4200 50  0000 L CNN "Description"
F 5 "I2C/SPI (x77/x78)" H 6750 4100 50  0000 L CNN "Serial Type"
	1    7100 3600
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Motion:ICM-20948 U?
U 1 1 61566EA9
P 10150 2100
F 0 "U?" H 10150 3200 50  0000 C CNN
F 1 "ICM-20948" H 10150 3100 50  0000 C CNN
F 2 "Sensor_Motion:InvenSense_QFN-24_3x3mm_P0.4mm" H 10150 1100 50  0001 C CNN
F 3 "http://www.invensense.com/wp-content/uploads/2016/06/DS-000189-ICM-20948-v1.3.pdf" H 10150 1950 50  0001 C CNN
F 4 "I2C/SPI (x68/x69)" H 10150 2900 50  0000 C CNN "Serial Type"
F 5 "MEMS IC" H 10150 3000 50  0000 C CNN "Description"
	1    10150 2100
	1    0    0    -1  
$EndComp
$Comp
L Memory_Flash:W25Q32JVSS U?
U 1 1 61568573
P 5200 1650
F 0 "U?" H 5200 2450 50  0000 C CNN
F 1 "W25Q32JVSS" H 5200 2350 50  0000 C CNN
F 2 "Package_SO:SOIC-8_5.23x5.23mm_P1.27mm" H 5200 1650 50  0001 C CNN
F 3 "http://www.winbond.com/resource-files/w25q32jv%20revg%2003272018%20plus.pdf" H 5200 1650 50  0001 C CNN
F 4 "Flash Storage IC" H 5200 2250 50  0000 C CNN "Description"
F 5 "SPI" H 5200 2150 50  0000 C CNN "Serial Type"
	1    5200 1650
	1    0    0    -1  
$EndComp
$Comp
L MCU_ST_STM32L0:STM32L031C4Tx U?
U 1 1 6156CC3B
P 1750 3400
F 0 "U?" H 1750 5250 50  0000 C CNN
F 1 "STM32L552CC" H 1750 5150 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 1250 1900 50  0001 R CNN
F 3 "https://www.st.com/resource/en/datasheet/DM00532748.pdf" H 1750 3400 50  0001 C CNN
F 4 "Microcontroller" H 1750 5050 50  0000 C CNN "Description"
	1    1750 3400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61577BBB
P 5050 5050
F 0 "#PWR?" H 5050 4900 50  0001 C CNN
F 1 "+5V" H 5065 5223 50  0000 C CNN
F 2 "" H 5050 5050 50  0001 C CNN
F 3 "" H 5050 5050 50  0001 C CNN
	1    5050 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 5250 5050 5050
$Comp
L power:+3.3V #PWR?
U 1 1 61579C7C
P 5300 5050
F 0 "#PWR?" H 5300 4900 50  0001 C CNN
F 1 "+3.3V" H 5315 5223 50  0000 C CNN
F 2 "" H 5300 5050 50  0001 C CNN
F 3 "" H 5300 5050 50  0001 C CNN
	1    5300 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 5050 5300 5350
$Comp
L power:GND #PWR?
U 1 1 6157A66F
P 1650 5100
F 0 "#PWR?" H 1650 4850 50  0001 C CNN
F 1 "GND" H 1655 4927 50  0000 C CNN
F 2 "" H 1650 5100 50  0001 C CNN
F 3 "" H 1650 5100 50  0001 C CNN
	1    1650 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 5050 1750 5050
Wire Wire Line
	1950 5050 1950 5000
Connection ~ 1650 5050
Wire Wire Line
	1650 5050 1650 5000
Wire Wire Line
	1850 5000 1850 5050
Connection ~ 1850 5050
Wire Wire Line
	1850 5050 1950 5050
Wire Wire Line
	1750 5000 1750 5050
Connection ~ 1750 5050
Wire Wire Line
	1750 5050 1850 5050
$Comp
L power:+3.3V #PWR?
U 1 1 6157B8A8
P 2150 1800
F 0 "#PWR?" H 2150 1650 50  0001 C CNN
F 1 "+3.3V" H 2165 1973 50  0000 C CNN
F 2 "" H 2150 1800 50  0001 C CNN
F 3 "" H 2150 1800 50  0001 C CNN
	1    2150 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1900 1950 1850
Wire Wire Line
	1950 1850 2150 1850
Wire Wire Line
	2150 1850 2150 1800
Wire Wire Line
	1850 1900 1850 1850
Wire Wire Line
	1850 1850 1950 1850
Connection ~ 1950 1850
Wire Wire Line
	1650 1900 1650 1850
Wire Wire Line
	1650 1850 1750 1850
Connection ~ 1850 1850
Wire Wire Line
	1750 1900 1750 1850
Connection ~ 1750 1850
Wire Wire Line
	1750 1850 1850 1850
Wire Wire Line
	1650 5100 1650 5050
$Comp
L power:+3.3V #PWR?
U 1 1 6157E93A
P 10750 1300
F 0 "#PWR?" H 10750 1150 50  0001 C CNN
F 1 "+3.3V" H 10765 1473 50  0000 C CNN
F 2 "" H 10750 1300 50  0001 C CNN
F 3 "" H 10750 1300 50  0001 C CNN
	1    10750 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 1400 10250 1350
Wire Wire Line
	10750 1350 10750 1300
Wire Wire Line
	10250 1350 10750 1350
$Comp
L power:+3.3V #PWR?
U 1 1 61580803
P 8850 4500
F 0 "#PWR?" H 8850 4350 50  0001 C CNN
F 1 "+3.3V" H 8865 4673 50  0000 C CNN
F 2 "" H 8850 4500 50  0001 C CNN
F 3 "" H 8850 4500 50  0001 C CNN
	1    8850 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 4600 9350 4550
Wire Wire Line
	9250 4600 9250 4550
Wire Wire Line
	9250 4550 9350 4550
Wire Wire Line
	9150 4600 9150 4550
Wire Wire Line
	9150 4550 9250 4550
Connection ~ 9250 4550
$Comp
L power:+3.3V #PWR?
U 1 1 61582A3F
P 7550 3100
F 0 "#PWR?" H 7550 2950 50  0001 C CNN
F 1 "+3.3V" H 7565 3273 50  0000 C CNN
F 2 "" H 7550 3100 50  0001 C CNN
F 3 "" H 7550 3100 50  0001 C CNN
	1    7550 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3150 7100 3200
$Comp
L power:+3.3V #PWR?
U 1 1 61585230
P 4400 1000
F 0 "#PWR?" H 4400 850 50  0001 C CNN
F 1 "+3.3V" H 4415 1173 50  0000 C CNN
F 2 "" H 4400 1000 50  0001 C CNN
F 3 "" H 4400 1000 50  0001 C CNN
	1    4400 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 1250 5200 1200
Wire Wire Line
	10050 1350 10050 1400
$Comp
L power:GND #PWR?
U 1 1 61592BAD
P 10150 2900
F 0 "#PWR?" H 10150 2650 50  0001 C CNN
F 1 "GND" H 10155 2727 50  0000 C CNN
F 2 "" H 10150 2900 50  0001 C CNN
F 3 "" H 10150 2900 50  0001 C CNN
	1    10150 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61593E63
P 5200 2150
F 0 "#PWR?" H 5200 1900 50  0001 C CNN
F 1 "GND" H 5205 1977 50  0000 C CNN
F 2 "" H 5200 2150 50  0001 C CNN
F 3 "" H 5200 2150 50  0001 C CNN
	1    5200 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2150 5200 2100
Wire Wire Line
	10150 2800 10150 2850
$Comp
L power:GND #PWR?
U 1 1 61595C26
P 9350 6100
F 0 "#PWR?" H 9350 5850 50  0001 C CNN
F 1 "GND" H 9355 5927 50  0000 C CNN
F 2 "" H 9350 6100 50  0001 C CNN
F 3 "" H 9350 6100 50  0001 C CNN
	1    9350 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61596F42
P 7100 4100
F 0 "#PWR?" H 7100 3850 50  0001 C CNN
F 1 "GND" H 7105 3927 50  0000 C CNN
F 2 "" H 7100 4100 50  0001 C CNN
F 3 "" H 7100 4100 50  0001 C CNN
	1    7100 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4000 7100 4050
$Comp
L Device:C C?
U 1 1 615983B4
P 10700 2550
F 0 "C?" H 10815 2596 50  0000 L CNN
F 1 "0.1uF" H 10815 2505 50  0000 L CNN
F 2 "" H 10738 2400 50  0001 C CNN
F 3 "~" H 10700 2550 50  0001 C CNN
	1    10700 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 2300 10700 2300
Wire Wire Line
	10700 2300 10700 2400
Wire Wire Line
	10150 2850 10700 2850
Wire Wire Line
	10700 2850 10700 2700
Connection ~ 10150 2850
Wire Wire Line
	10150 2850 10150 2900
$Comp
L Device:C C?
U 1 1 6159B417
P 9050 1550
F 0 "C?" H 9165 1596 50  0000 L CNN
F 1 "0.1uF" H 9165 1505 50  0000 L CNN
F 2 "" H 9088 1400 50  0001 C CNN
F 3 "~" H 9050 1550 50  0001 C CNN
	1    9050 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 1400 9050 1350
$Comp
L Device:C C?
U 1 1 615A4EBB
P 10750 1550
F 0 "C?" H 10865 1596 50  0000 L CNN
F 1 "0.1uF" H 10865 1505 50  0000 L CNN
F 2 "" H 10788 1400 50  0001 C CNN
F 3 "~" H 10750 1550 50  0001 C CNN
	1    10750 1550
	1    0    0    -1  
$EndComp
Connection ~ 10750 1350
Wire Wire Line
	10750 1350 10750 1400
$Comp
L power:GND #PWR?
U 1 1 615A6C63
P 10750 1750
F 0 "#PWR?" H 10750 1500 50  0001 C CNN
F 1 "GND" H 10755 1577 50  0000 C CNN
F 2 "" H 10750 1750 50  0001 C CNN
F 3 "" H 10750 1750 50  0001 C CNN
	1    10750 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 1700 10750 1750
$Comp
L Device:C C?
U 1 1 615AA5AE
P 7550 3600
F 0 "C?" H 7665 3646 50  0000 L CNN
F 1 "100nF" H 7665 3555 50  0000 L CNN
F 2 "" H 7588 3450 50  0001 C CNN
F 3 "~" H 7550 3600 50  0001 C CNN
	1    7550 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3150 7550 3150
Wire Wire Line
	7550 3150 7550 3100
Wire Wire Line
	7100 4050 7550 4050
Connection ~ 7100 4050
Wire Wire Line
	7100 4050 7100 4100
Text GLabel 9650 1900 0    50   Input ~ 0
I2C1_SDA
Text GLabel 9650 2000 0    50   Input ~ 0
I2C1_SCL
Text GLabel 4850 5450 2    50   Input ~ 0
EXT_SDA
Text GLabel 4850 5550 2    50   Input ~ 0
EXT_SCL
Text GLabel 1150 4200 0    50   Input ~ 0
I2C1_SDA
Text GLabel 1150 3900 0    50   Input ~ 0
I2C1_SCL
Text GLabel 2350 3500 2    50   Input ~ 0
USART2_TX
Text GLabel 2350 3600 2    50   Input ~ 0
USART2_RX
Text GLabel 8750 4900 0    50   Input ~ 0
USART1_TX
Text GLabel 8750 5000 0    50   Input ~ 0
USART1_RX
Wire Wire Line
	8850 4500 8850 4550
Wire Wire Line
	8850 4550 9150 4550
Connection ~ 9150 4550
$Comp
L Device:L L?
U 1 1 615FB923
P 1300 6850
F 0 "L?" H 1353 6896 50  0000 L CNN
F 1 "27nH" H 1353 6805 50  0000 L CNN
F 2 "" H 1300 6850 50  0001 C CNN
F 3 "~" H 1300 6850 50  0001 C CNN
	1    1300 6850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9350 6000 9350 6050
Text GLabel 10150 5350 3    50   Input ~ 0
GPS_ANT_NET
Wire Wire Line
	9950 5300 10150 5300
Wire Wire Line
	10150 5300 10150 5350
$Comp
L Connector:Conn_Coaxial J?
U 1 1 6158807E
P 10450 5300
F 0 "J?" H 10550 5275 50  0000 L CNN
F 1 "Conn_Coaxial" H 10550 5184 50  0000 L CNN
F 2 "" H 10450 5300 50  0001 C CNN
F 3 " ~" H 10450 5300 50  0001 C CNN
	1    10450 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 5300 10250 5300
Connection ~ 10150 5300
Wire Wire Line
	10450 5500 10450 6050
Wire Wire Line
	10450 6050 9350 6050
Connection ~ 9350 6050
Wire Wire Line
	9350 6050 9350 6100
Text GLabel 9550 4600 2    50   Input ~ 0
GPS_VCC_RF
Text GLabel 9950 5100 2    50   Input ~ 0
GPS_LNA_EN
$Comp
L power:GND #PWR?
U 1 1 6157F617
P 1650 7400
F 0 "#PWR?" H 1650 7150 50  0001 C CNN
F 1 "GND" H 1655 7227 50  0000 C CNN
F 2 "" H 1650 7400 50  0001 C CNN
F 3 "" H 1650 7400 50  0001 C CNN
	1    1650 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6157B78C
P 2550 6450
F 0 "C?" H 2665 6496 50  0000 L CNN
F 1 "1nF" H 2665 6405 50  0000 L CNN
F 2 "" H 2588 6300 50  0001 C CNN
F 3 "~" H 2550 6450 50  0001 C CNN
	1    2550 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61572E87
P 2350 6450
F 0 "R?" H 2420 6496 50  0000 L CNN
F 1 "100k" H 2420 6405 50  0000 L CNN
F 2 "" V 2280 6450 50  0001 C CNN
F 3 "~" H 2350 6450 50  0001 C CNN
	1    2350 6450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 615FD6FC
P 2000 7150
F 0 "R?" H 2070 7196 50  0000 L CNN
F 1 "10k" H 2070 7105 50  0000 L CNN
F 2 "" V 1930 7150 50  0001 C CNN
F 3 "~" H 2000 7150 50  0001 C CNN
	1    2000 7150
	1    0    0    -1  
$EndComp
Text GLabel 2600 6950 2    50   Input ~ 0
GPS_LNA_EN
$Comp
L Transistor_FET:FDC6330L Q?
U 1 1 61570C7B
P 1650 6550
F 0 "Q?" H 1650 7092 50  0000 C CNN
F 1 "FDC6330L" H 1650 7001 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TSOT-23-6" H 1600 5975 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/FDC6330L-D.PDF" H 1550 6450 50  0001 C CNN
	1    1650 6550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2350 6300 2350 6250
Wire Wire Line
	2350 6250 1950 6250
Wire Wire Line
	2350 6600 2350 6650
Wire Wire Line
	2350 6650 2100 6650
Wire Wire Line
	2100 6650 2100 6450
Wire Wire Line
	2100 6450 1950 6450
Wire Wire Line
	2550 6300 2550 6250
Wire Wire Line
	2550 6250 2350 6250
Connection ~ 2350 6250
$Comp
L power:GND #PWR?
U 1 1 615B79A3
P 2550 6650
F 0 "#PWR?" H 2550 6400 50  0001 C CNN
F 1 "GND" H 2555 6477 50  0000 C CNN
F 2 "" H 2550 6650 50  0001 C CNN
F 3 "" H 2550 6650 50  0001 C CNN
	1    2550 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 6650 2550 6600
Wire Wire Line
	2000 6650 1950 6650
Wire Wire Line
	2000 7000 2000 6950
Wire Wire Line
	1650 6850 1650 7350
Wire Wire Line
	1650 7350 2000 7350
Wire Wire Line
	2000 7350 2000 7300
Connection ~ 1650 7350
Wire Wire Line
	1650 7350 1650 7400
Wire Wire Line
	2000 6950 2000 6650
Connection ~ 2000 6950
Text GLabel 2600 6250 2    50   Input ~ 0
GPS_VCC_RF
Wire Wire Line
	2550 6250 2600 6250
Connection ~ 2550 6250
$Comp
L Device:R R?
U 1 1 615CA193
P 1300 6450
F 0 "R?" H 1370 6496 50  0000 L CNN
F 1 "10k" H 1370 6405 50  0000 L CNN
F 2 "" V 1230 6450 50  0001 C CNN
F 3 "~" H 1300 6450 50  0001 C CNN
	1    1300 6450
	-1   0    0    -1  
$EndComp
Text GLabel 1250 7050 0    50   Input ~ 0
GPS_ANT_NET
Wire Wire Line
	2000 6950 2600 6950
Wire Wire Line
	1300 6700 1300 6600
Wire Wire Line
	1300 7000 1300 7050
Wire Wire Line
	1300 7050 1250 7050
Text Notes 900  5950 0    50   ~ 0
                  See Page 17 of \nhttps://www.u-blox.com/en/docs/UBX-15030059
Wire Notes Line
	3150 7650 3150 5750
Wire Wire Line
	1300 6250 1300 6300
Wire Wire Line
	1350 6250 1300 6250
Wire Notes Line
	650  5750 650  7650
Wire Notes Line
	650  5750 3150 5750
Wire Notes Line
	3150 7650 650  7650
Text GLabel 2350 4000 2    50   Input ~ 0
SPI1_MOSI
Text GLabel 2350 3400 2    50   Input ~ 0
SPI1_SCK
Text GLabel 2350 4500 2    50   Input ~ 0
USB_DP
Text GLabel 2350 4400 2    50   Input ~ 0
USB_DM
Text GLabel 5700 1450 2    50   Input ~ 0
SPI1_MOSI
Text GLabel 2350 3900 2    50   Input ~ 0
SPI1_MISO
Text GLabel 5700 1550 2    50   Input ~ 0
SPI1_MISO
Text GLabel 4700 1750 0    50   Input ~ 0
SPI1_SCK
Wire Wire Line
	5200 2100 5750 2100
Wire Wire Line
	5750 2100 5750 1850
Wire Wire Line
	5750 1850 5700 1850
Connection ~ 5200 2100
Wire Wire Line
	5200 2100 5200 2050
Wire Wire Line
	5700 1750 5750 1750
Wire Wire Line
	5750 1750 5750 1850
Connection ~ 5750 1850
Wire Wire Line
	9050 2850 10150 2850
Wire Wire Line
	9050 1700 9050 1800
Wire Wire Line
	9650 1800 9050 1800
Connection ~ 9050 1800
$Comp
L RF_GPS:MAX-8Q U?
U 1 1 6156627E
P 9350 5300
F 0 "U?" H 9350 6400 50  0000 C CNN
F 1 "MAX-8Q" H 9350 6300 50  0000 C CNN
F 2 "RF_GPS:ublox_MAX" H 9750 4650 50  0001 C CNN
F 3 "https://www.u-blox.com/sites/default/files/MAX-8_DataSheet_%28UBX-16000093%29.pdf" H 9350 5300 50  0001 C CNN
F 4 "GNSS Module" H 9350 6200 50  0000 C CNN "Description"
F 5 "I2C/UART" H 9350 6100 50  0000 C CNN "Serial Type"
	1    9350 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 2000 10700 2000
Wire Wire Line
	11050 2000 11050 2850
Wire Wire Line
	11050 2850 10700 2850
Connection ~ 10700 2850
Wire Wire Line
	10650 2100 10700 2100
Wire Wire Line
	10700 2100 10700 2000
Connection ~ 10700 2000
Wire Wire Line
	10700 2000 11050 2000
Wire Wire Line
	9650 2300 9050 2300
Connection ~ 9050 2300
Wire Wire Line
	9050 2300 9050 2850
Text GLabel 9650 2400 0    50   Input ~ 0
MEMS_EN
Text GLabel 1150 3300 0    50   Input ~ 0
MEMS_EN
Wire Wire Line
	9050 2100 9050 2300
Wire Wire Line
	9050 1800 9050 2100
Connection ~ 9050 2100
Wire Wire Line
	9650 2100 9050 2100
Text GLabel 1150 4700 0    50   Input ~ 0
SPI2_MISO
Text GLabel 1150 4800 0    50   Input ~ 0
SPI2_MOSI
Text GLabel 1150 4300 0    50   Input ~ 0
SPI2_SCK
Wire Wire Line
	4250 1550 4250 2100
Wire Wire Line
	4250 2100 5200 2100
Wire Wire Line
	6700 3800 6650 3800
Wire Wire Line
	6650 3800 6650 4050
Wire Wire Line
	6650 4050 7100 4050
Wire Wire Line
	8250 5200 8250 6050
Wire Wire Line
	8250 6050 9350 6050
Wire Wire Line
	8750 5200 8700 5200
Wire Wire Line
	8750 5300 8700 5300
Wire Wire Line
	8700 5300 8700 5200
Connection ~ 8700 5200
Wire Wire Line
	8700 5200 8250 5200
Text GLabel 1150 4400 0    50   Input ~ 0
EXT_SDA
Text GLabel 1150 4600 0    50   Input ~ 0
EXT_SCL
Wire Notes Line
	8950 750  11100 750 
Wire Notes Line
	11100 750  11100 3150
Wire Notes Line
	11100 3150 8950 3150
Wire Notes Line
	8950 750  8950 3150
Wire Notes Line
	7950 4350 7950 2750
Wire Notes Line
	7950 2750 6200 2750
Wire Notes Line
	6200 2750 6200 4350
Wire Notes Line
	6200 4350 7950 4350
Wire Notes Line
	8200 6350 11100 6350
Wire Notes Line
	6200 2400 6200 750 
Wire Notes Line
	6200 750  4150 750 
Wire Notes Line
	4150 750  4150 2400
Wire Notes Line
	4150 2400 6200 2400
Text Notes 5450 4750 2    100  ~ 0
Main System Bus
Text Notes 7400 2700 2    100  ~ 0
Barometer Chip
Text Notes 9750 700  2    100  ~ 0
MEMS Chip
Text Notes 9600 3350 2    100  ~ 0
GNSS Module Chip
Text Notes 2200 700  2    100  ~ 0
Microcontroller Chip
Text Notes 5600 700  2    100  ~ 0
Flash Storage Chip
Text Notes 650  5700 0    100  ~ 0
GNSS Module LNA And Active\nAntenna Matching Network
$Comp
L power:GND #PWR?
U 1 1 6175B71A
P 850 1500
F 0 "#PWR?" H 850 1250 50  0001 C CNN
F 1 "GND" H 855 1327 50  0000 C CNN
F 2 "" H 850 1500 50  0001 C CNN
F 3 "" H 850 1500 50  0001 C CNN
	1    850  1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6175BE4D
P 850 1250
F 0 "C?" H 965 1296 50  0000 L CNN
F 1 "1uF" H 965 1205 50  0000 L CNN
F 2 "" H 888 1100 50  0001 C CNN
F 3 "~" H 850 1250 50  0001 C CNN
	1    850  1250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6175AAC7
P 850 1000
F 0 "#PWR?" H 850 850 50  0001 C CNN
F 1 "+3.3V" H 865 1173 50  0000 C CNN
F 2 "" H 850 1000 50  0001 C CNN
F 3 "" H 850 1000 50  0001 C CNN
	1    850  1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  1400 850  1450
Wire Wire Line
	850  1000 850  1050
$Comp
L Device:C C?
U 1 1 617783A3
P 1250 1250
F 0 "C?" H 1365 1296 50  0000 L CNN
F 1 "100nF" H 1365 1205 50  0000 L CNN
F 2 "" H 1288 1100 50  0001 C CNN
F 3 "~" H 1250 1250 50  0001 C CNN
	1    1250 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61778808
P 1700 1250
F 0 "C?" H 1815 1296 50  0000 L CNN
F 1 "100nF" H 1815 1205 50  0000 L CNN
F 2 "" H 1738 1100 50  0001 C CNN
F 3 "~" H 1700 1250 50  0001 C CNN
	1    1700 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61778B9F
P 2150 1250
F 0 "C?" H 2265 1296 50  0000 L CNN
F 1 "100nF" H 2265 1205 50  0000 L CNN
F 2 "" H 2188 1100 50  0001 C CNN
F 3 "~" H 2150 1250 50  0001 C CNN
	1    2150 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  1450 1250 1450
Wire Wire Line
	2150 1450 2150 1400
Connection ~ 850  1450
Wire Wire Line
	850  1450 850  1500
Wire Wire Line
	2150 1100 2150 1050
Wire Wire Line
	2150 1050 1700 1050
Connection ~ 850  1050
Wire Wire Line
	850  1050 850  1100
Wire Wire Line
	1250 1100 1250 1050
Connection ~ 1250 1050
Wire Wire Line
	1250 1050 850  1050
Wire Wire Line
	1700 1100 1700 1050
Connection ~ 1700 1050
Wire Wire Line
	1700 1050 1250 1050
Wire Wire Line
	1700 1400 1700 1450
Connection ~ 1700 1450
Wire Wire Line
	1700 1450 2150 1450
Wire Wire Line
	1250 1400 1250 1450
Connection ~ 1250 1450
Wire Wire Line
	1250 1450 1700 1450
Wire Notes Line
	650  750  650  5350
$Comp
L Device:C C?
U 1 1 617EDBE5
P 4400 1300
F 0 "C?" H 4515 1346 50  0000 L CNN
F 1 "100nF" H 4515 1255 50  0000 L CNN
F 2 "" H 4438 1150 50  0001 C CNN
F 3 "~" H 4400 1300 50  0001 C CNN
	1    4400 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1550 4400 1550
Wire Wire Line
	4800 1200 5200 1200
Wire Wire Line
	4400 1450 4400 1550
Connection ~ 4400 1550
Wire Wire Line
	4400 1550 4250 1550
Wire Wire Line
	4800 1200 4800 1100
Wire Wire Line
	4800 1100 4400 1100
Wire Wire Line
	4400 1100 4400 1150
Connection ~ 4400 1100
Wire Wire Line
	4400 1000 4400 1100
Wire Notes Line
	11100 3400 11100 6350
Wire Notes Line
	8200 3400 8200 6350
$Comp
L Device:C C?
U 1 1 618540DA
P 2600 1250
F 0 "C?" H 2715 1296 50  0000 L CNN
F 1 "100nF" H 2715 1205 50  0000 L CNN
F 2 "" H 2638 1100 50  0001 C CNN
F 3 "~" H 2600 1250 50  0001 C CNN
	1    2600 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1450 2600 1450
Wire Wire Line
	2600 1450 2600 1400
Connection ~ 2150 1450
Wire Wire Line
	2600 1100 2600 1050
Wire Wire Line
	2600 1050 2150 1050
Connection ~ 2150 1050
Wire Notes Line
	8200 3400 11100 3400
$Comp
L power:GND #PWR?
U 1 1 618A9A52
P 8600 4150
F 0 "#PWR?" H 8600 3900 50  0001 C CNN
F 1 "GND" H 8605 3977 50  0000 C CNN
F 2 "" H 8600 4150 50  0001 C CNN
F 3 "" H 8600 4150 50  0001 C CNN
	1    8600 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 618A9A58
P 8600 3900
F 0 "C?" H 8715 3946 50  0000 L CNN
F 1 "1uF" H 8715 3855 50  0000 L CNN
F 2 "" H 8638 3750 50  0001 C CNN
F 3 "~" H 8600 3900 50  0001 C CNN
	1    8600 3900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 618A9A5E
P 8600 3650
F 0 "#PWR?" H 8600 3500 50  0001 C CNN
F 1 "+3.3V" H 8615 3823 50  0000 C CNN
F 2 "" H 8600 3650 50  0001 C CNN
F 3 "" H 8600 3650 50  0001 C CNN
	1    8600 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 4050 8600 4100
Wire Wire Line
	8600 3650 8600 3700
$Comp
L Device:C C?
U 1 1 618A9A66
P 9000 3900
F 0 "C?" H 9115 3946 50  0000 L CNN
F 1 "100nF" H 9115 3855 50  0000 L CNN
F 2 "" H 9038 3750 50  0001 C CNN
F 3 "~" H 9000 3900 50  0001 C CNN
	1    9000 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 618A9A6C
P 9450 3900
F 0 "C?" H 9565 3946 50  0000 L CNN
F 1 "100nF" H 9565 3855 50  0000 L CNN
F 2 "" H 9488 3750 50  0001 C CNN
F 3 "~" H 9450 3900 50  0001 C CNN
	1    9450 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 618A9A72
P 9900 3900
F 0 "C?" H 10015 3946 50  0000 L CNN
F 1 "100nF" H 10015 3855 50  0000 L CNN
F 2 "" H 9938 3750 50  0001 C CNN
F 3 "~" H 9900 3900 50  0001 C CNN
	1    9900 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 4100 9000 4100
Wire Wire Line
	9900 4100 9900 4050
Connection ~ 8600 4100
Wire Wire Line
	8600 4100 8600 4150
Wire Wire Line
	9900 3750 9900 3700
Wire Wire Line
	9900 3700 9450 3700
Connection ~ 8600 3700
Wire Wire Line
	8600 3700 8600 3750
Wire Wire Line
	9000 3750 9000 3700
Connection ~ 9000 3700
Wire Wire Line
	9000 3700 8600 3700
Wire Wire Line
	9450 3750 9450 3700
Connection ~ 9450 3700
Wire Wire Line
	9450 3700 9000 3700
Wire Wire Line
	9450 4050 9450 4100
Connection ~ 9450 4100
Wire Wire Line
	9450 4100 9900 4100
Wire Wire Line
	9000 4050 9000 4100
Connection ~ 9000 4100
Wire Wire Line
	9000 4100 9450 4100
$Comp
L Device:C C?
U 1 1 618A9A8C
P 10350 3900
F 0 "C?" H 10465 3946 50  0000 L CNN
F 1 "100nF" H 10465 3855 50  0000 L CNN
F 2 "" H 10388 3750 50  0001 C CNN
F 3 "~" H 10350 3900 50  0001 C CNN
	1    10350 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 4100 10350 4100
Wire Wire Line
	10350 4100 10350 4050
Connection ~ 9900 4100
Wire Wire Line
	10350 3750 10350 3700
Wire Wire Line
	10350 3700 9900 3700
Connection ~ 9900 3700
$Comp
L Connector:USB_B_Micro J?
U 1 1 618B28C9
P 3650 6900
F 0 "J?" H 3800 7250 50  0000 C CNN
F 1 "USB_B_Micro" H 3950 6550 50  0000 C CNN
F 2 "" H 3800 6850 50  0001 C CNN
F 3 "~" H 3800 6850 50  0001 C CNN
	1    3650 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 618B4B01
P 3650 7300
F 0 "#PWR?" H 3650 7050 50  0001 C CNN
F 1 "GND" H 3655 7127 50  0000 C CNN
F 2 "" H 3650 7300 50  0001 C CNN
F 3 "" H 3650 7300 50  0001 C CNN
	1    3650 7300
	1    0    0    -1  
$EndComp
NoConn ~ 3550 7300
NoConn ~ 3950 7100
$Comp
L power:+5V #PWR?
U 1 1 618E2439
P 4050 6600
F 0 "#PWR?" H 4050 6450 50  0001 C CNN
F 1 "+5V" H 4065 6773 50  0000 C CNN
F 2 "" H 4050 6600 50  0001 C CNN
F 3 "" H 4050 6600 50  0001 C CNN
	1    4050 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 6700 4050 6700
$Comp
L Power_Protection:USBLC6-2SC6 U?
U 1 1 618EC55B
P 5650 7000
F 0 "U?" H 5900 7350 50  0000 C CNN
F 1 "USBLC6-2SC6" H 5950 6650 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 5650 6500 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/usblc6-2.pdf" H 5850 7350 50  0001 C CNN
	1    5650 7000
	1    0    0    -1  
$EndComp
Text GLabel 5250 7100 0    50   Input ~ 0
USB_DP
Text GLabel 6050 7100 2    50   Input ~ 0
USB_DM
$Comp
L power:GND #PWR?
U 1 1 6191BC25
P 5650 7400
F 0 "#PWR?" H 5650 7150 50  0001 C CNN
F 1 "GND" H 5655 7227 50  0000 C CNN
F 2 "" H 5650 7400 50  0001 C CNN
F 3 "" H 5650 7400 50  0001 C CNN
	1    5650 7400
	1    0    0    -1  
$EndComp
Text GLabel 3950 6900 2    50   Input ~ 0
USB_CONN_D+
Text GLabel 3950 7000 2    50   Input ~ 0
USB_CONN_D-
Text GLabel 5250 6900 0    50   Input ~ 0
USB_CONN_D+
Text GLabel 6050 6900 2    50   Input ~ 0
USB_CONN_D-
$Comp
L power:+5V #PWR?
U 1 1 619392EA
P 5650 6600
F 0 "#PWR?" H 5650 6450 50  0001 C CNN
F 1 "+5V" H 5665 6773 50  0000 C CNN
F 2 "" H 5650 6600 50  0001 C CNN
F 3 "" H 5650 6600 50  0001 C CNN
	1    5650 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 6600 4050 6700
Wire Notes Line
	6700 7650 6700 6350
Wire Notes Line
	6700 6350 3400 6350
Wire Notes Line
	3400 6350 3400 7650
Wire Notes Line
	3400 7650 6700 7650
Text Notes 6100 6300 2    100  ~ 0
USB Connector and ESD Protection
$Comp
L SparkFun-Connectors:CONN_05X2RA J?
U 1 1 6196C043
P 6750 5400
F 0 "J?" H 6750 5910 45  0000 C CNN
F 1 "ARM 10 Pin" H 6750 5826 45  0000 C CNN
F 2 "2X5-RA" H 6750 5800 20  0001 C CNN
F 3 "" H 6750 5400 50  0001 C CNN
F 4 "SWD Connector" H 6750 5731 60  0000 C CNN "Description"
	1    6750 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6196C349
P 6400 5650
F 0 "#PWR?" H 6400 5400 50  0001 C CNN
F 1 "GND" H 6405 5477 50  0000 C CNN
F 2 "" H 6400 5650 50  0001 C CNN
F 3 "" H 6400 5650 50  0001 C CNN
	1    6400 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 5650 6400 5600
Wire Wire Line
	6400 5300 6500 5300
Wire Wire Line
	6500 5400 6400 5400
Connection ~ 6400 5400
Wire Wire Line
	6400 5400 6400 5300
Wire Wire Line
	6500 5600 6400 5600
Connection ~ 6400 5600
Wire Wire Line
	6400 5600 6400 5400
NoConn ~ 6500 5500
NoConn ~ 7000 5400
NoConn ~ 7000 5500
$Comp
L power:+3.3V #PWR?
U 1 1 619AF36E
P 6300 5150
F 0 "#PWR?" H 6300 5000 50  0001 C CNN
F 1 "+3.3V" H 6315 5323 50  0000 C CNN
F 2 "" H 6300 5150 50  0001 C CNN
F 3 "" H 6300 5150 50  0001 C CNN
	1    6300 5150
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Connectors:CONN_06X2PTH_FEMALE J?
U 1 1 619BABDC
P 4600 5500
F 0 "J?" H 4600 6060 45  0000 C CNN
F 1 "CONN_06X2PTH_FEMALE" H 4600 5976 45  0000 C CNN
F 2 "2X6" H 4600 5950 20  0001 C CNN
F 3 "" H 4600 5500 50  0001 C CNN
F 4 "2x6 Header" H 4600 5881 60  0000 C CNN "Field4"
	1    4600 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 5250 4850 5250
Wire Wire Line
	4850 5350 5300 5350
Text GLabel 7000 5200 2    50   Input ~ 0
SWDIO
Text GLabel 7000 5300 2    50   Input ~ 0
SWCLK
Text GLabel 7000 5600 2    50   Input ~ 0
NRST
Text GLabel 2350 4600 2    50   Input ~ 0
SWDIO
Text GLabel 2350 4700 2    50   Input ~ 0
SWCLK
Text GLabel 1150 2100 0    50   Input ~ 0
NRST
$Comp
L Device:C C?
U 1 1 619D380E
P 7450 5350
F 0 "C?" H 7565 5396 50  0000 L CNN
F 1 "100nF" H 7565 5305 50  0000 L CNN
F 2 "" H 7488 5200 50  0001 C CNN
F 3 "~" H 7450 5350 50  0001 C CNN
	1    7450 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 619D3F11
P 7450 5500
F 0 "#PWR?" H 7450 5250 50  0001 C CNN
F 1 "GND" H 7455 5327 50  0000 C CNN
F 2 "" H 7450 5500 50  0001 C CNN
F 3 "" H 7450 5500 50  0001 C CNN
	1    7450 5500
	1    0    0    -1  
$EndComp
Text GLabel 7500 5150 2    50   Input ~ 0
NRST
Wire Wire Line
	7450 5150 7450 5200
Wire Wire Line
	7500 5150 7450 5150
Wire Wire Line
	6300 5200 6300 5150
Wire Wire Line
	6300 5200 6500 5200
Wire Notes Line
	7850 4800 6200 4800
Text Notes 7350 4750 2    100  ~ 0
SWD Connector
Text Notes 6250 6050 0    50   ~ 0
NRST cap protects\nagainst parasitic resets.
Wire Notes Line
	6200 6100 7850 6100
Wire Notes Line
	6200 4800 6200 6100
Wire Notes Line
	7850 4800 7850 6100
Text GLabel 6700 3600 0    50   Input ~ 0
I2C1_SDA
Text GLabel 6700 3700 0    50   Input ~ 0
I2C1_SCL
Wire Wire Line
	6650 3400 6700 3400
Wire Wire Line
	7100 3150 6650 3150
Wire Wire Line
	6650 3150 6650 3400
Connection ~ 7100 3150
Wire Wire Line
	6250 3500 6250 4050
Wire Wire Line
	6250 4050 6650 4050
Wire Wire Line
	6250 3500 6700 3500
Connection ~ 6650 4050
Wire Wire Line
	7550 3750 7550 4050
Connection ~ 7550 3150
Wire Wire Line
	7550 3150 7550 3450
Text GLabel 1150 4000 0    50   Input ~ 0
PVD_IN
Text GLabel 2650 1050 2    50   Input ~ 0
PVD_IN
Wire Wire Line
	2600 1050 2650 1050
Connection ~ 2600 1050
$Comp
L SparkFun-PowerSymbols:1.8V #SUPPLY?
U 1 1 61B5F150
P 9450 1300
F 0 "#SUPPLY?" H 9500 1300 45  0001 L BNN
F 1 "1.8V" H 9450 1470 45  0000 C CNN
F 2 "XXX-00000" H 9450 1481 60  0001 C CNN
F 3 "" H 9450 1300 60  0001 C CNN
	1    9450 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 1350 9450 1350
Wire Wire Line
	9450 1300 9450 1350
Connection ~ 9450 1350
Wire Wire Line
	9450 1350 10050 1350
Wire Notes Line
	4150 6050 5900 6050
Wire Notes Line
	5900 6050 5900 4800
Wire Notes Line
	4150 4800 5900 4800
Wire Notes Line
	4150 4800 4150 6050
NoConn ~ 1150 2500
NoConn ~ 1150 2600
$Comp
L power:GND #PWR?
U 1 1 61C83AF5
P 1000 2350
F 0 "#PWR?" H 1000 2100 50  0001 C CNN
F 1 "GND" H 1005 2177 50  0000 C CNN
F 2 "" H 1000 2350 50  0001 C CNN
F 3 "" H 1000 2350 50  0001 C CNN
	1    1000 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 2350 1000 2300
Wire Wire Line
	1000 2300 1150 2300
NoConn ~ 1150 2800
NoConn ~ 1150 2900
NoConn ~ 1150 3000
NoConn ~ 1150 3100
NoConn ~ 1150 3400
NoConn ~ 1150 3500
NoConn ~ 1150 3600
NoConn ~ 1150 3700
NoConn ~ 1150 3800
NoConn ~ 1150 4100
NoConn ~ 1150 4500
NoConn ~ 2350 4800
NoConn ~ 2350 4300
NoConn ~ 2350 4200
NoConn ~ 2350 3300
$Comp
L Device:LED D?
U 1 1 61DAA1E4
P 2900 4400
F 0 "D?" V 2939 4282 50  0000 R CNN
F 1 "LED" V 2848 4282 50  0000 R CNN
F 2 "" H 2900 4400 50  0001 C CNN
F 3 "~" H 2900 4400 50  0001 C CNN
	1    2900 4400
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 61DABA9D
P 3250 4400
F 0 "D?" V 3289 4282 50  0000 R CNN
F 1 "LED" V 3198 4282 50  0000 R CNN
F 2 "" H 3250 4400 50  0001 C CNN
F 3 "~" H 3250 4400 50  0001 C CNN
	1    3250 4400
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 61DABD7B
P 3600 4400
F 0 "D?" V 3639 4282 50  0000 R CNN
F 1 "LED" V 3548 4282 50  0000 R CNN
F 2 "" H 3600 4400 50  0001 C CNN
F 3 "~" H 3600 4400 50  0001 C CNN
	1    3600 4400
	0    -1   -1   0   
$EndComp
$Comp
L Sensor_Temperature:MCP9808_MSOP U?
U 1 1 61DBA45F
P 5000 3600
F 0 "U?" H 4950 4350 50  0000 L CNN
F 1 "MCP9808_MSOP" H 4700 4250 50  0000 L CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 5000 3600 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22203b.pdf" H 4750 4050 50  0001 C CNN
	1    5000 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61E02D07
P 5000 4200
F 0 "#PWR?" H 5000 3950 50  0001 C CNN
F 1 "GND" H 5005 4027 50  0000 C CNN
F 2 "" H 5000 4200 50  0001 C CNN
F 3 "" H 5000 4200 50  0001 C CNN
	1    5000 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4200 5000 4150
Wire Wire Line
	5000 4150 4550 4150
Wire Wire Line
	4550 4150 4550 3900
Wire Wire Line
	4550 3700 4600 3700
Connection ~ 5000 4150
Wire Wire Line
	5000 4150 5000 4100
Wire Wire Line
	4600 3800 4550 3800
Connection ~ 4550 3800
Wire Wire Line
	4550 3800 4550 3700
Wire Wire Line
	4600 3900 4550 3900
Connection ~ 4550 3900
Wire Wire Line
	4550 3900 4550 3800
$Comp
L power:+3.3V #PWR?
U 1 1 61E32D77
P 5450 3000
F 0 "#PWR?" H 5450 2850 50  0001 C CNN
F 1 "+3.3V" H 5465 3173 50  0000 C CNN
F 2 "" H 5450 3000 50  0001 C CNN
F 3 "" H 5450 3000 50  0001 C CNN
	1    5450 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3100 5000 3050
Wire Wire Line
	5000 3050 5450 3050
Wire Wire Line
	5450 3050 5450 3000
NoConn ~ 5400 3600
Text GLabel 4600 3300 0    50   Input ~ 0
I2C1_SDA
Text GLabel 4600 3400 0    50   Input ~ 0
I2C1_SCL
Wire Notes Line
	4150 2750 4150 4450
Text Notes 5100 2700 2    100  ~ 0
Temp Sensor
Wire Wire Line
	2900 4250 2900 4100
Wire Wire Line
	2900 4100 2350 4100
$Comp
L power:GND #PWR?
U 1 1 61EE7B43
P 2900 4550
F 0 "#PWR?" H 2900 4300 50  0001 C CNN
F 1 "GND" H 2905 4377 50  0000 C CNN
F 2 "" H 2900 4550 50  0001 C CNN
F 3 "" H 2900 4550 50  0001 C CNN
	1    2900 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EE7D1F
P 3250 4550
F 0 "#PWR?" H 3250 4300 50  0001 C CNN
F 1 "GND" H 3255 4377 50  0000 C CNN
F 2 "" H 3250 4550 50  0001 C CNN
F 3 "" H 3250 4550 50  0001 C CNN
	1    3250 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EE7F70
P 3600 4550
F 0 "#PWR?" H 3600 4300 50  0001 C CNN
F 1 "GND" H 3605 4377 50  0000 C CNN
F 2 "" H 3600 4550 50  0001 C CNN
F 3 "" H 3600 4550 50  0001 C CNN
	1    3600 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3800 3250 4250
Wire Wire Line
	2350 3800 3250 3800
Wire Wire Line
	3600 4250 3600 3700
Wire Wire Line
	2350 3700 3600 3700
Wire Notes Line
	3900 5350 3900 750 
Wire Notes Line
	650  5350 3900 5350
Wire Notes Line
	650  750  3900 750 
$Comp
L Device:C C?
U 1 1 6202B8FB
P 5450 3300
F 0 "C?" H 5565 3346 50  0000 L CNN
F 1 "100nF" H 5565 3255 50  0000 L CNN
F 2 "" H 5488 3150 50  0001 C CNN
F 3 "~" H 5450 3300 50  0001 C CNN
	1    5450 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3050 5450 3150
Connection ~ 5450 3050
Wire Wire Line
	5450 3450 5450 4150
Wire Wire Line
	5450 4150 5000 4150
Wire Notes Line
	5850 4450 5850 2750
Wire Notes Line
	4150 4450 5850 4450
Wire Notes Line
	4150 2750 5850 2750
Wire Notes Line
	8400 2300 8400 750 
Wire Notes Line
	6750 2300 8400 2300
Wire Notes Line
	6750 750  6750 2300
Text Notes 6750 2250 0    50   ~ 0
Used by ICM-20948 MEMS chip for VDDIO
$Comp
L SparkFun-PowerSymbols:1.8V #SUPPLY?
U 1 1 61B2FEFD
P 8100 1050
F 0 "#SUPPLY?" H 8150 1050 45  0001 L BNN
F 1 "1.8V" H 8100 1220 45  0000 C CNN
F 2 "XXX-00000" H 8100 1231 60  0001 C CNN
F 3 "" H 8100 1050 60  0001 C CNN
	1    8100 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 1900 7400 1900
Wire Wire Line
	8100 1550 8100 1900
Connection ~ 7750 1100
Wire Wire Line
	8100 1100 7750 1100
Wire Wire Line
	8100 1250 8100 1100
$Comp
L Device:C C?
U 1 1 61AF690A
P 8100 1400
F 0 "C?" H 8215 1446 50  0000 L CNN
F 1 "1uF" H 8215 1355 50  0000 L CNN
F 2 "" H 8138 1250 50  0001 C CNN
F 3 "~" H 8100 1400 50  0001 C CNN
	1    8100 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 1900 7400 1850
Connection ~ 7400 1900
Wire Wire Line
	6900 1900 6900 1550
Wire Wire Line
	7400 1900 6900 1900
Wire Wire Line
	7400 1950 7400 1900
$Comp
L power:GND #PWR?
U 1 1 61AD5313
P 7400 1950
F 0 "#PWR?" H 7400 1700 50  0001 C CNN
F 1 "GND" H 7405 1777 50  0000 C CNN
F 2 "" H 7400 1950 50  0001 C CNN
F 3 "" H 7400 1950 50  0001 C CNN
	1    7400 1950
	1    0    0    -1  
$EndComp
Connection ~ 7400 1500
Wire Wire Line
	7400 1400 7400 1500
Wire Wire Line
	7400 1500 7400 1550
Wire Wire Line
	7750 1500 7400 1500
Wire Wire Line
	7750 1500 7750 1450
Wire Wire Line
	7750 1100 7700 1100
Wire Wire Line
	7750 1150 7750 1100
Wire Wire Line
	6900 1100 7100 1100
Wire Wire Line
	6900 1250 6900 1100
$Comp
L Device:C C?
U 1 1 61A9F2BB
P 6900 1400
F 0 "C?" H 7015 1446 50  0000 L CNN
F 1 "0.1uF" H 7015 1355 50  0000 L CNN
F 2 "" H 6938 1250 50  0001 C CNN
F 3 "~" H 6900 1400 50  0001 C CNN
	1    6900 1400
	1    0    0    -1  
$EndComp
$Comp
L dk_PMIC-Voltage-Regulators-Linear:LM317T U?
U 1 1 61A9082F
P 7400 1100
F 0 "U?" H 7400 1387 60  0000 C CNN
F 1 "LM317T" H 7400 1281 60  0000 C CNN
F 2 "digikey-footprints:TO-220-3" H 7600 1300 60  0001 L CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/group1/a0/db/e6/9b/6f/9c/45/7b/CD00000455/files/CD00000455.pdf/jcr:content/translations/en.CD00000455.pdf" H 7600 1400 60  0001 L CNN
F 4 "497-1575-5-ND" H 7600 1500 60  0001 L CNN "Digi-Key_PN"
F 5 "LM317T" H 7600 1600 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 7600 1700 60  0001 L CNN "Category"
F 7 "PMIC - Voltage Regulators - Linear" H 7600 1800 60  0001 L CNN "Family"
F 8 "http://www.st.com/content/ccc/resource/technical/document/datasheet/group1/a0/db/e6/9b/6f/9c/45/7b/CD00000455/files/CD00000455.pdf/jcr:content/translations/en.CD00000455.pdf" H 7600 1900 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/stmicroelectronics/LM317T/497-1575-5-ND/591677" H 7600 2000 60  0001 L CNN "DK_Detail_Page"
F 10 "IC REG LIN POS ADJ 1.5A TO220AB" H 7600 2100 60  0001 L CNN "Description"
F 11 "STMicroelectronics" H 7600 2200 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7600 2300 60  0001 L CNN "Status"
	1    7400 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 1050 8100 1100
Connection ~ 8100 1100
$Comp
L Device:R R?
U 1 1 61C27377
P 7750 1300
F 0 "R?" H 7820 1346 50  0000 L CNN
F 1 "240" H 7820 1255 50  0000 L CNN
F 2 "" V 7680 1300 50  0001 C CNN
F 3 "~" H 7750 1300 50  0001 C CNN
	1    7750 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61C3CDF0
P 7400 1700
F 0 "R?" H 7470 1746 50  0000 L CNN
F 1 "100" H 7470 1655 50  0000 L CNN
F 2 "" V 7330 1700 50  0001 C CNN
F 3 "~" H 7400 1700 50  0001 C CNN
	1    7400 1700
	1    0    0    -1  
$EndComp
Wire Notes Line
	8400 750  6750 750 
Text Notes 6750 700  0    100  ~ 0
1.8V Regulator
$EndSCHEMATC
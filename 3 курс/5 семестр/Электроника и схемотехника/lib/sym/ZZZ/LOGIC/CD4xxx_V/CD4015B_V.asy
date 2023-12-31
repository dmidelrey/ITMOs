Version 4
SymbolType BLOCK
LINE Normal -80 96 -80 -96
LINE Normal 80 96 -80 96
LINE Normal 80 -96 80 96
LINE Normal -80 -96 80 -96
WINDOW 0 80 -96 Bottom 2
WINDOW 3 80 96 Top 2
WINDOW 39 0 128 Top 2
SYMATTR Value CD4015B
SYMATTR SpiceLine vdd=5 speed=1 tripdt=5e-9
SYMATTR Prefix X
SYMATTR Description Dual 4-Stage Static Shift Register
SYMATTR ModelFile CD4000_v.lib
PIN -80 -48 LEFT 8
PINATTR PinName D
PINATTR SpiceOrder 1
PIN -80 -16 LEFT 8
PINATTR PinName CLK
PINATTR SpiceOrder 2
PIN -80 16 LEFT 8
PINATTR PinName RST
PINATTR SpiceOrder 3
PIN 80 -48 RIGHT 8
PINATTR PinName Q1
PINATTR SpiceOrder 4
PIN 80 -16 RIGHT 8
PINATTR PinName Q2
PINATTR SpiceOrder 5
PIN 80 16 RIGHT 8
PINATTR PinName Q3
PINATTR SpiceOrder 6
PIN 80 48 RIGHT 8
PINATTR PinName Q4
PINATTR SpiceOrder 7
PIN 0 -96 TOP 8
PINATTR PinName VDD
PINATTR SpiceOrder 8
PIN 0 96 BOTTOM 8
PINATTR PinName VGND
PINATTR SpiceOrder 9

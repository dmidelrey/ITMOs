Version 4
SymbolType BLOCK
LINE Normal -96 -96 -64 -96
LINE Normal -96 -57 -96 -95
LINE Normal -32 -96 -64 -96
LINE Normal -32 -57 -32 -95
LINE Normal -32 128 -64 128
LINE Normal -32 89 -32 127
LINE Normal -96 128 -64 128
LINE Normal -96 89 -96 127
LINE Normal -176 48 -176 16
LINE Normal -137 48 -175 48
LINE Normal -176 -16 -176 16
LINE Normal -137 -16 -175 -16
CIRCLE Normal 16 -64 -145 96
WINDOW 0 8 -56 Bottom 2
WINDOW 3 -62 6 Top 2
WINDOW 39 19 161 Top 2
SYMATTR Value AC_MOTOR
SYMATTR SpiceLine NP=2 J=.62 K=.97 LS=29.4M LR=29.7M RS=67M RR=32M
SYMATTR Prefix X
SYMATTR ModelFile motor.lib
PIN -64 -96 TOP 8
PINATTR PinName A
PINATTR SpiceOrder 1
PIN -176 16 VTOP 8
PINATTR PinName B
PINATTR SpiceOrder 2
PIN -64 128 BOTTOM 8
PINATTR PinName C
PINATTR SpiceOrder 3
PIN 112 -32 RIGHT 8
PINATTR PinName Velocity
PINATTR SpiceOrder 4
PIN 112 16 RIGHT 8
PINATTR PinName Torque
PINATTR SpiceOrder 5
PIN 112 64 RIGHT 8
PINATTR PinName RPM
PINATTR SpiceOrder 6

Version 4
SymbolType CELL
LINE Normal 16 16 -16 16
LINE Normal 16 80 -16 80
LINE Normal 97 80 64 80
LINE Normal 64 16 96 16
RECTANGLE Normal 45 80 35 16
ARC Normal 0 16 32 48 16 48 16 16
ARC Normal 0 48 32 80 16 80 16 48
ARC Normal 80 16 48 48 64 16 64 48
ARC Normal 80 48 48 80 64 48 64 80
TEXT -16 48 Left 0 n1
TEXT 70 46 Left 0 n2
SYMATTR Prefix x
SYMATTR SpiceModel TRANSFOR2
SYMATTR SpiceLine mU=2000 Hc=15 Bs=.44 Br=.15 A=0.245e-4  Lm=1.75e-2 Lg=0 FEDDY=2MEG
SYMATTR SpiceLine2 N1=100 N2=100  RL1=1m RL2=1m  Ls1=.1u  Ls2=.1u Cn1=1p Cn2=1p
SYMATTR ModelFile Transfor2.sub
PIN -16 16 NONE 8
PINATTR PinName a1
PINATTR SpiceOrder 1
PIN -16 80 NONE 8
PINATTR PinName a2
PINATTR SpiceOrder 2
PIN 96 16 NONE 8
PINATTR PinName b1
PINATTR SpiceOrder 3
PIN 96 80 NONE 8
PINATTR PinName b2
PINATTR SpiceOrder 4

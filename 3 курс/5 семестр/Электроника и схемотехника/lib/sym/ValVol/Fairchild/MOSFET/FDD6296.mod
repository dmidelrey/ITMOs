*FDD6296/FDU6296 at Temp. Electrical Model
*------------------------------------------------------
.SUBCKT FDD6296 20 10 30 50
*20=DRAIN 10=GATE 30=SOURCE 50=VTEMP
Rg 10 11x 1
Rdu 12x 1 1u
M1 2 1 4x 4x DMOS L=1u W=1u
.MODEL DMOS NMOS(VTO=2 KP=6.98E+1
+THETA=.1 VMAX=9.5E5 LEVEL=3)
Cgs 1 5x 1396p
Rd 20 4 1.8E-3 
Dds 5x 4 DDS
.MODEL DDS D(M=4.96E-1 VJ=1.31 CJO=903p)
Dbody 5x 20 DBODY
.MODEL DBODY D(IS=7.89E-12 N=1.08663 RS=0.000137 TT=9.14n)
Ra 4 2 1.8E-3 
Rs 5x 5 0.5m
Ls 5 30 0.5n
M2 1 8 6 6 INTER
E2 8 6 4 1 2
.MODEL INTER NMOS(VTO=0 KP=10 LEVEL=1)
Cgdmax 7 4 650p
Rcgd 7 4 10meg
Dgd 6 4 DGD
Rdgd 6 4 10meg
.MODEL DGD D(M=2.05E-1 VJ=7.7E-3 CJO=650p)
M3 7 9 1 1 INTER
E3 9 1 4 1 -2
*ZX SECTION
EOUT 4x 6x poly(2) (1x,0) (3x,0) 0 0 0 0 1
FCOPY 0 3x VSENSE 1
RIN 1x 0 1G
VSENSE 6x 5x 0
RREF 3x 0 10m
*TEMP SECTION
ED 101 0 VALUE {V(50,100)}
VAMB 100 0 25
EKP 1x 0 101 0 .002
*VTO TEMP SECTION
EVTO 102 0 101 0 .0009
EVT 12x 11x 102 0 1
*DIODE THEMO BREAKDOWN SECTION
EBL VB1 VB2 101 0 .08
VBLK VB2 0 30
D 20 DB1 DBLK
.MODEL DBLK D(IS=1E-14 CJO=.1p RS=.1)
EDB DB1 0 VB1 0 1
.ENDS FDD6296
*FDD6296/FDU6296 (Rev.A) 9/8/03 
*ST

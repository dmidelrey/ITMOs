.SUBCKT FDB2532 2 1 3      
*Spice model for FDB3532, FDP2532 & FDI2532
*Nom Temp=25 deg C 
*April 2002

Ca 12 8 1.4e-9
Cb 15 14 1.6e-9
Cin 6 8 5.61e-9

Dbody 7 5 DbodyMOD
Dbreak 5 11 DbreakMOD
Dplcap 10 5 DplcapMOD

Ebreak 11 7 17 18 159
Eds 14 8 5 8 1
Egs 13 8 6 8 1
Esg 6 10 6 8 1
Evthres 6 21 19 8 1
Evtemp 20 6 18 22 1

It 8 17 1

Lgate 1 9 9.56e-9
Ldrain 2 5 1.0e-9
Lsource 3 7 7.71e-9

RLgate 1 9 95.6
RLdrain 2 5 10
RLsource 3 7 77.1

Mmed 16 6 8 8 MmedMOD
Mstro 16 6 8 8 MstroMOD 
Mweak 16 21 8 8 MweakMOD    

Rbreak 17 18 RbreakMOD 1
Rdrain 50 16 RdrainMOD 9.6e-3
Rgate 9 20 1.01
RSLC1 5 51 RSLCMOD 1.0e-6
RSLC2 5 50 1.0e3
Rsource 8 7 RsourceMOD 3.0e-3
Rvthres 22 8 RvthresMOD 1
Rvtemp 18 19 RvtempMOD 1
S1a 6 12 13 8 S1AMOD
S1b 13 12 13 8 S1BMOD
S2a 6 15 14 13 S2AMOD
S2b 13 15 14 13 S2BMOD

Vbat 22 19 DC 1

ESLC 51 50  VALUE={(V(5,51)/ABS(V(5,51)))*(PWR(V(5,51)/(1e-6*190),3))}

.MODEL DbodyMOD D (IS=6.0E-11 N=1.09 RS=2.3e-3 TRS1=3.0e-3 TRS2=1.0e-6
+ CJO=3.9e-9 M=0.65 TT=4.8e-8 XTI=4.2)
.MODEL DbreakMOD D (RS=0.17 TRS1=3.0e-3 TRS2=-8.9e-6)
.MODEL DplcapMOD D (CJO=1.0e-9 IS=1.0e-30 N=10 M=0.6)

.MODEL MmedMOD NMOS (VTO=3.55 KP=10 IS=1e-30 N=10 TOX=1 L=1u W=1u RG=1.01)
.MODEL MstroMOD NMOS (VTO=4.2 KP=145 IS=1e-30 N=10 TOX=1 L=1u W=1u)
.MODEL MweakMOD NMOS (VTO=2.9 KP=0.05 IS=1e-30 N=10 TOX=1 L=1u W=1u RG=10.1 RS=0.1) 

.MODEL RbreakMOD RES (TC1=1.1e-3 TC2=-9.0e-7)
.MODEL RdrainMOD RES (TC1=9.0e-3 TC2=3.5e-5)
.MODEL RSLCMOD RES (TC1=3.4e-3 TC2=1.5e-6)
.MODEL RsourceMOD RES (TC1=4.0e-3 TC2=1.0e-6)
.MODEL RvthresMOD RES (TC1=-4.1e-3 TC2=-1.4e-5)
.MODEL RvtempMOD RES (TC1=-4.0e-3 TC2=3.5e-6)

.MODEL S1AMOD VSWITCH (RON=1e-5 ROFF=0.1 VON=-6.0 VOFF=-4.0)
.MODEL S1BMOD VSWITCH (RON=1e-5 ROFF=0.1 VON=-4.0 VOFF=-6.0)
.MODEL S2AMOD VSWITCH (RON=1e-5 ROFF=0.1 VON=-1.4 VOFF=1.0)
.MODEL S2BMOD VSWITCH (RON=1e-5 ROFF=0.1 VON=1.0 VOFF=-1.4)

.ENDS


.SUBCKT FDB2532_THERMAL TH TL
*Thermal Model Subcircuit

CTHERM1 TH 6 7.5e-3
CTHERM2 6 5 8.0e-3
CTHERM3 5 4 9.0e-3
CTHERM4 4 3 2.4e-2
CTHERM5 3 2 3.4e-2
CTHERM6 2 TL 6.5e-2

RTHERM1 TH 6 3.1e-4
RTHERM2 6 5 2.5e-3
RTHERM3 5 4 2.0e-2
RTHERM4 4 3 8.0e-2
RTHERM5 3 2 1.2e-1
RTHERM6 2 TL 1.3e-1

.ends


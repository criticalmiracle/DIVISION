DIVIS .SET 1H
QOUT .SET 2H
REMAIN .SET 3H
.mmregs
.text
START:
STM #140H,ST0
RSBX CPL
RSBX FRCT
NOP
NOP
NOP
NOP
LD DIVID,A
RPT #0FH
SUBC DIVIS,A
STL A,QOUT
STH A,REMAIN
HLT: B HLT

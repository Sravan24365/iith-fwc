;hello
;using assembly language for distributive law

.include "/home/sravan184/m328Pdef.inc"
Start:

ldi r16, 0b11111000 ; identifying input pins 8,9,10
out DDRB,r16            ; declaring pins as input
ldi r16, 0b11111111 ;
out PortB,r16           ; activating internal pullup for pins 1>


ldi r30, 0b00111100 ;identifying output pins 2,3,4,5
out DDRD,r30
ldi r17,0b00000001
ldi r18,0b00000001
ldi r19,0b00000001
AND r17,r16          ;r17=a
LSR  r16
AND r18,r16           ;r18=b
LSR r16
AND r19,r16           ;r19=c

mov r0,r18               ;r0=b
mov r1,r19                ;r1=c
OR r0,r1                   ;r0=b+c
mov r2,r17                 ;r2=a
AND r0,r2                  ;r0=a*(b+c)   (LHS)

mov r3,r17                 ;r3=a
mov r4,r18                 ;r4=b
mov r5,r19                 ;r5=c
AND r4,r3                  ;r4=a*b
AND r5,r3                  ;r5=a*c
OR r5,r4                      ;r5=a*b+a*c   (RHS)

eor r0,r5                      ;r0=0 if LHS=RHS   1 if LHS !=RHS

ldi r20,0b00000001
eor r20,r0                     ;compliment to display 1 if LHS=>

;B=0,C=0,D=0       to display 0 and 1 only in seven segment

mov r25,r20
LSL r25                        ;r0=000000A0
LSL r25                         ;r1=00000A00
out PortD,r25             ; PD2=A , PD3=B=0, PD4=C=0, PD5=D=0


rjmp Start

#include<Arduino.h> 
int a,b,c,x,y; 
int A,B,C,D; 
void disp_7447(int D, int C, int B, int A) 
{ 
  digitalWrite(2, A); 
  digitalWrite(3, B); 
  digitalWrite(4, C); 
  digitalWrite(5, D); 
 
} 
void setup() { 
    pinMode(2, OUTPUT); 
    pinMode(3, OUTPUT); 
    pinMode(4, OUTPUT); 
    pinMode(5, OUTPUT); 
    pinMode(6, INPUT); 
    pinMode(7, INPUT); 
    pinMode(8, INPUT);  
} 
void loop() 
{ 
a = digitalRead(6); 
b = digitalRead(7); 
c = digitalRead(8); 
x=a||(b&&c);
y=(a&&b)||(a&&c);
if(x==y)
{
A=1;
}
else
{
A=0;
} 
B=0; 
C=0; 
D=0; 
disp_7447(D,C,B,A); 
}

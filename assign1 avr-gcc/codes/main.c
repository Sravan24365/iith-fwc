#include <avr/io.h>

#include <util/delay.h>

#include <stdbool.h>
int main (void)
{

 bool a=0,b=0,c=0,x=0,y=0,z=0;
 DDRB = 0b11111000;
 PORTB=0b00000111;   // activating pull ups

 DDRD = 0b00111100;  //2,3,4,5 as output (A,B,C,D  7447)


while(1)
{
 a = (PINB & (1 << PINB0)) == (1 << PINB0);
 b = (PINB & (1 << PINB1)) == (1 << PINB1);
 c = (PINB & (1 << PINB2)) == (1 << PINB2);

x= a&&(b||c);
y= (a||b)&&(a||c);

z=(x&&y)||(!x&&!y);  //xnor operation to configure if x=y 1,else 0

PORTD |= (z << 2); // A,B=0,C=0,D=0 in 7447 inputs
}
return 0;
}

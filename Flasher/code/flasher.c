void main() {
   trisb=0b00000000;
 loop:
   portb.B0=1;
   delay_ms(50);
   portb.B0=0;
   delay_ms(50);
   portb.B1=1;
   delay_ms(50);
   portb.B1=0;
   goto loop;
   

   
   

   
   
}
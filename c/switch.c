#include <stdio.h>
 
int main ()
{
   char grade = 'B';
 
   switch(grade)
   {
   case 'A' :
      printf("Excellent\n" );
      break;
   case 'B' :
   case 'C' :
      printf("Good\n" );
      break;
   case 'D' :
      printf("Not bad\n" );
      break;
   case 'F' :
      printf("Try again\n" );
      break;
   default :
      printf("Nonsense\n" );
   }
   printf("Your grade is %c\n", grade );
 
   return 0;
}

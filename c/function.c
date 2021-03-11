#include <stdio.h>
#include <time.h>
#include <stdlib.h> 

//pass by value
int max(int num1, int num2);
//pass by address
void max2(int num1, int num2, int *max);
//pass an array
double getAverage(int *arr, int size);
//return a pointer
int * getRandom(); //! static int *p 
int main (void)
{
    int a = 100;
    int b = 200;
    int ans;

    //pass by value
    ans = max(a, b);
    printf( "Max value is : %d\n", ans);

    ans = 0;

    //pass by address
    max2(a, b, &ans);
    printf( "Max value is : %d\n", ans);

    //pass an array
    int balance[5] = {1000, 2, 3, 17, 50};
    double avg; 
    avg = getAverage(balance, 5) ; 
    printf("Average value is: %f\n", avg);


    //return a pointer
    int *p;

    p = getRandom();
    for (int i = 0; i < 10; i++ )
    {
        printf("*(p + [%d]) : %d\n", i, *(p + i) );
    }

    return 0;
}


int max(int num1, int num2)
{
    int result;

    if (num1 > num2)
        result = num1;
    else
        result = num2;

    return result;
}

void max2(int num1, int num2, int *max)
{
    if (num1 > num2)
        *max = num1;
    else
        *max = num2;
}



double getAverage(int *arr, int size)
{
  int    i, sum = 0;       
  double avg;          
 
  for (i = 0; i < size; ++i){
    sum += arr[i];
  }
 
  avg = (double)sum / size;
 
  return avg;
}

int * getRandom( )
{
   static int r[10];
   int i;
 
   srand( (unsigned)time( NULL ) );
   for ( i = 0; i < 10; ++i){
      r[i] = rand();
      printf("%d\n", r[i] );
   }
 
   return r;
}

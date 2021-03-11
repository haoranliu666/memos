#include <stdio.h>
#include <time.h>
#include <stdlib.h> 

//pass by value
int max(int x, int y);
//pass by address
void max2(int x, int y, int *max);
//pass an array
double getAverage(int *arr, int size);
//return a pointer
int * getRandom(); //! static int *p 
//paramater has a pointer to a function
void what(int (*max)(int, int));
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

    //point to a function
    int (* p2)(int, int) = & max;
    ans = p2(1, 2);
    printf("%d", ans);

    return 0;
}


int max(int x, int y)
{
    return x > y ? x : y;
}

void max2(int x, int y, int *max)
{
    if (x > y)
        *max = x;
    else
        *max = y;
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

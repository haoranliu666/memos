#include <stdio.h>

//pass by value
int max(int num1, int num2);
//pass by address
void max2(int num1, int num2, int *max);
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

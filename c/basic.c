// bash environment build & execute:
//
// gcc test1.c test2.c -o main.out
// ./main.out

#include <stdio.h>

#define LENGTH 10  
typedef int feet;

int main(void) {

    char ch = 'c';
    putchar(ch);

    bool a = true;
    int num1, num2, num3;
    const double num = 1.1;

        
    int const * a //pointer to const int
    const int * b //pointer to const int          
    int * const c //pointer is const

    
    //force type change
    int a = (int)1.0

    //pointer
    int  var = 20;
    int  *ip = NULL;
    ip = &var;
    
    //pointer array
    const char *names[] = {
                   "Zara Ali",
                   "Hina Ali",
                   "Nuha Ali",
                   "Sara Ali",
    };
    
    printf("int 存储大小 : %lu \n", sizeof(int));

    printf("Hello, World!\n");
    return 0;
}

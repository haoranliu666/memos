#include <stdio.h>

int main ()
{
    //while
    int i = 0;
    while(i < 10){
        printf("i = %d\n", i);
        i++;
    }

    //for
    for(int i = 0; i < 10; i++){
        printf("i = %d\n", i);
    }

    //do while
    i = 0;
    do{
        printf("i = %d\n", i);
        i++;
    }while(i < 10);

    //break
    i = 0;
    while(1){
        printf("i = %d\n", i);
        i++;
        if(i == 10)
            break;
    }

    //continue
    for(int i = 0; i < 10; i++){
        if(i % 2 == 0)
            continue;
        printf("i = %d\n", i);
    }

    return 0;
}

#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]){

    //the execitive file name itself counts 1
    if(argc == 3){
        printf("%d, %d\n", atoi(argv[1]), atoi(argv[2]));
    }else if( argc > 3 ){
        printf("Too many arguments supplied.\n");
    }else{
        printf("Two argument expected.\n");
    }
}

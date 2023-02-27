#include <stdio.h>
#include <unistd.h>

int main(int argc, char* argv[]){

    int i;
    size_t j;
    int max = 0;
    int max_index = 0;
    char arg [100];
    for(i=1; i<argc; i++){

        for (j = 0; arg [j] != '\0'; j++);

        if(j > max){
            max = j;
            max_index = i;
        }
    }
    fflush(stdout);
    return write(1,argv[i],j);
}
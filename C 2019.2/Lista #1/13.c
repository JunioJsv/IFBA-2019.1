#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

// Jeovane Santos Viana
/*
* 13º)Faça uma função que receba, por parâmetro, 
* uma  matriz A(12,12) e retorna o produto dos elementos acima 
* da diagonal principal e da diagonal secundári
*/

long int getproduct(int * matriz, int rows, int cols);
void showsec(int * matriz, int rows, int cols);
void showpri(int * matriz, int rows, int cols);


int main() {
    srand(time(NULL));
    int matriz[12][12];

    for(int y = 0; y < 12; y++) {
        for(int x = 0; x < 12; x++) {
            matriz[y][x] = rand() % 41 + 10;
        }
    }
    puts("Primaria:");
    showpri((int *) matriz, 12, 12);
    puts("Secundaria:");
    showsec((int *) matriz, 12, 12);
    printf("[!] O produto dos elementos acima da diagonal principal e da diagonal secundaria e %ld",
            getproduct((int *) matriz, 12, 12));
    return 0;
}

long int getproduct(int * matriz, int rows, int cols) {
    long int pri = 0;
    long int sec = 0;

    for(int y = 0; y < rows; y++) {
        for(int x = 0; x < cols; x++) {
            if(x > y)
                pri += (long int) matriz[x + y * cols];
            if(x < cols - 1 - y)
                sec += (long int) matriz[x + y * cols];
        }
    }

    return (long int) pri * sec;
}

void showpri(int * matriz, int rows, int cols) {
    for(int y = 0; y < rows; y++) {
        for(int x = 0; x < cols; x++) {
            printf(x == y ?
                        "<%d> " :
                   x > y ?
                        "[%d] " :
                   " %d  ", (int) matriz[x + y * cols]);
        }
        puts("");
    }
}

void showsec(int * matriz, int rows, int cols) {
    for(int y = 0; y < rows; y++) {
        for(int x = 0; x < cols; x++) {
            printf(x == cols - 1 - y ?
                        "<%d> " :
                   x < cols - 1 - y ?
                        "[%d] " :
                   " %d  ", (int) matriz[x + y * cols]);
        }
        puts("");
    }
}
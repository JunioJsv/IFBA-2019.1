#include <stdio.h>
#include <time.h>
#include <stdlib.h>

// Jeovane Santos Viana
/*
* 10º)Faça uma função que receba, por parâmetro, uma matriz A(10,10) e retorne
* a soma dos elementos acima da diagonal principal
*/

void showpri(int * matriz, int rows, int cols);
int sumpri(int * matriz, int rows, int cols);

int main() {
    srand(time(NULL));

    int matriz[10][10];
    for(int y = 0; y < 10; y++) {
        for(int x = 0; x < 10; x++)
            matriz[y][x] = 1;
    }

    showpri((int *) matriz, 10, 10);
    printf("[!] A soma dos elementos acima da diagonal principal e %d", 
            sumpri((int *) matriz, 10, 10));

    return 0;
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

int sumpri(int * matriz, int rows, int cols) {
    int total = 0;
    for(int y = 0; y < rows; y++) {
        for(int x = 0; x < cols; x++)
            if(x > y)
                total += matriz[x + y * cols];
    }
    return total;
}
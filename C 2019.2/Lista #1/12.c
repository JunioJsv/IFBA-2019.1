#include <stdio.h>
#include <time.h>
#include <stdlib.h>

// Jeovane Santos Viana
/*
* 12º)Faça uma função que receba, por parâmetro, uma matriz A(8,8) e retorne
* o menor valor dos elementos acima da diagonal secundária.
*/

int getlowersec(int * matriz, int rows, int cols);
void showsec(int * matriz, int rows, int cols);

int main() {
    srand(time(NULL));
    int matriz[8][8];

    for(int y = 0; y < 8; y++) {
        for(int x = 0; x < 8; x++)
            matriz[y][x] = rand() % 90 + 10;
    }
    showsec((int *) matriz, 8, 8);
    printf("[!] O menor valor dos elementos acima da diagonal secundaria e %d",
            getlowersec((int *) matriz, 8, 8));
    return 0;
}

int getlowersec(int * matriz, int rows, int cols) {
    int lower = (int) NULL;
    for(int y = 0; y < rows; y++) {
        for(int x = 0; x < cols; x++) {
            int num = (int) matriz[x + y * cols];
            if((lower == NULL || num < lower) && x < cols - 1 - y)
                lower = num;
        }
    }
    return lower;
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
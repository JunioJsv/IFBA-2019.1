#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

// Jeovane Santos Viana
/*
* 9‌)Fa‌ça uma fun‌‌o que receba, por par‌metro,  uma matriz A(7,7)e retorne 
* o menor  valor  dos elementos abaixo da diagonal secund‌ria.
*/

void showsec(int * matriz, int rows, int cols);
void showpri(int * matriz, int rows, int cols);
int getlowersec(int * matriz, int rows, int cols);

int main() {
    srand(time(NULL));
    int matriz[7][7];

    for(int y = 0; y < 7; y++) {
        for(int x = 0; x < 7; x++) {
            matriz[y][x] = rand() % 90 + 10;
        }
    }
    showsec((int *) matriz, 7, 7);
    printf("[!] O menor numero abaixo da diagonal secundaria e %d", getlowersec((int *) matriz, 7, 7));
    return 0;
}

void showsec(int * matriz, int rows, int cols) {
    for(int y = 0; y < rows; y++) {
        for(int x = 0; x < cols; x++) {
            printf(x == cols - 1 - y ?
                        "<%d> " :
                   x > cols - 1 - y ?
                        "%d " :
                   "%d ", (int) matriz[x * y + y]);
        }
        puts("");
    }
}

void showpri(int * matriz, int rows, int cols) {
    for(int y = 0; y < rows; y++) {
        for(int x = 0; x < cols; x++) {
            printf(x == y ?
                        "<%d> " :
                   x < y ?
                        "%d " :
                   "%d ", (int) matriz[x * y + y]);
        }
        puts("");
    }
}

int getlowersec(int * matriz, int rows, int cols) {
    int lower = (int) NULL;
    for(int y = 0; y < rows; y++) {
        for(int x = 0; x < cols; x++) {
            int num = (int) matriz[x * y + y];
            if((lower == NULL || num < lower) && x > cols - 1 - y)
                lower = num;
        }
    }
    return lower;
}
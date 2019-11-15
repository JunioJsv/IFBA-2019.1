#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <string.h>

// Jeovane Santos Viana
/*
* 8º)Faça uma função que receba, por parâmetro, uma matriz A(12,12)
* e retorne a média aritmética dos elementos abaixo da diagonal principal.
*/

float getmediapri(int * matriz, int rows, int cols);
void showpri(int * matriz, int rows, int cols);

int main() {
    srand(time(NULL));
    int matriz[12][12];

    for(int y = 0; y < 12; y++) {
        for(int x = 0; x < 12; x++) {
            matriz[y][x] = rand() % 90 + 10;
        }
    }
    //memset(matriz, -1, 12 * 12 * sizeof(int));

    showpri((int *) matriz, 12, 12);
    printf("[!] A media aritmetica dos elementos abaixo da diagonal principal e %f",
            getmediapri((int *) matriz, 12, 12));

    return 0;
}

float getmediapri(int * matriz, int rows, int cols) {
    int total = 0;
    int count = 0;

    for(int y = 0; y < rows; y++) {
        for(int x = 0; x < cols; x++) {
            if(x < y) {
                total += (float) matriz[x * y + y];
                count++;
            }
        }
    }

    return count != 0 ? (float) total / count : 0.0f; 
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
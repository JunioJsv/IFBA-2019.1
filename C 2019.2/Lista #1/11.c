#include <stdio.h>
#include <stdlib.h>
#include <time.h>

// Jeovane Santos Viana
/*
* 11º) Faça uma função que receba, por parâmetro, uma matriz A(12,12) e retorna
* a média aritmética dos elementos abaixo da diagonal principal e da diagonal secundária.
*/

float getMedia(int * matriz, int rows, int cols);
void showpri(int * matriz, int rows, int cols);
void showsec(int * matriz, int rows, int cols);

int main() {
    srand(time(NULL));
    int matriz[12][12];

    for(int y = 0; y < 12; y++) {
        for(int x = 0; x < 12; x++)
            matriz[y][x] = rand() % 90 + 10;
    }
    puts("Primaria:");
    showpri((int *) matriz, 12, 12);
    puts("Secundaria:");
    showsec((int *) matriz, 12, 12);

    printf("[!] A media aritmetica dos elementos abaixo da diagonal principal e da diagonal secundaria e %f",
            getMedia((int *) matriz, 12, 12));
    return 0;
}

float getMedia(int * matriz, int rows, int cols) {
    float total = 0;
    int count = 0;

    for(int y = 0; y < rows; y++) {
        for(int x = 0; x < cols; x++) {
            if(x < y) {
                total += (float) matriz[x + y * cols];
                count++;
            }
            if(x > cols - 1 - y) {
                total += (float) matriz[x + y * cols];
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
                   x > cols - 1 - y ?
                        "[%d] " :
                   " %d  ", (int) matriz[x + y * cols]);
        }
        puts("");
    }
}
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

// Jeovane Santos Viana
/*
* 7º) Na teoria dos sistemas, define-se como elemento minimax de uma matriz o menor elemento
* de uma linha onde se encontra o maior elemento da matriz. Faça uma função que recebe, por
* parâmetro,uma matriz A(10,10) e retorna a sua posição de seu elemento minimax.
*/

char * minimax(int * matriz, int rows, int cols);

int main() {
    srand(time(NULL));
    int matriz[10][10];

    for(int y = 0; y < 10; y++) {
        for(int x = 0; x < 10; x++) {
            matriz[y][x] = rand() % 90 + 10;
        }
    }

    printf("\n[!] O minimax se encontra na posicao %s", minimax((int *) matriz, 10, 10));

    return 0;
}

char * minimax(int * matriz, int rows, int cols) {
    int maxrow = 0;
    int buff = 0;
    int flag = 0;
    char * pos = malloc(sizeof(char) * 128);
    // Achar a linha que tem o maior valor
    for(int y = 0; y < rows; y++) {
        for(int x = 0; x < cols; x++) {
            if(matriz[x + y * cols] > buff) {
                buff = matriz[x + y * cols];
                maxrow = y;
            }
        }
    }
    // Achar o menor valor na linha que tem o maior valor
    buff = (int) NULL;
    for(int x = 0; x < cols; x++) {
        if(matriz[x + maxrow * cols] < buff || buff == NULL) {
            buff = matriz[x + maxrow * cols];
            sprintf(pos, "[%d,%d]", maxrow, x);
        }
    }
    // Desenhar a matriz
    for(int y = 0; y < rows; y++) {
        printf(y == maxrow ? "> " : "  ");
        for(int x = 0; x < cols; x++)
            printf(
                y == maxrow && matriz[x + y * cols] == buff && !flag ?
                    "[%d]" + flag++ :
                " %d ", matriz[x + y * cols]);
        puts("");
    }
    return pos;
}
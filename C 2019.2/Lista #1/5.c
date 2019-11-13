#include <stdio.h>
#include <string.h>
#include <locale.h>

// Jeovane Santos Viana
/*
* 5º) Escreva uma função que recebe um inteiro e imprima esse valor em algarismos romanos. Por exemplo, se essa
* função receber 18 deve imprimir XVIII
*/

void toromano(int num, char * buff, int size);

int main() {
    int inteiro = 0;
    char buffer[128];
    setlocale(LC_ALL, "Portuguese");

    puts("Digite um inteiro:");
    scanf(" %d", &inteiro);
    toromano(inteiro, buffer, 128);
    printf("%d > %s", inteiro, buffer);
    
    return 0;
}

void toromano(int num, char * target, int size) {
    int count = 0;

    memset(target, 0, sizeof(char) * size);

    while(num > 0 && count < size) {
        if(num >= 1000) {
            num -= 1000;
            target[count++] = 'M';
        }
        else if(num >= 900) {
            num -= 900;
            target[count++] = 'C';
            target[count++] = 'M';
        }

        else if(num >= 500) {
            num -= 500;
            target[count++] = 'D';
        }
        else if(num >= 400) {
            num -= 400;
            target[count++] = 'C';
            target[count++] = 'D';
        }

        else if(num >= 100) {
            num -= 100;
            target[count++] = 'C';
        }
        else if(num >= 90) {
            num -= 90;
            target[count++] = 'X';
            target[count++] = 'C';
        }

        else if(num >= 50) {
            num -= 50;
            target[count++] = 'L';
        }
        else if(num >= 40) {
            num -= 40;
            target[count++] = 'X';
            target[count++] = 'L';
        }
        
        else if(num >= 10) {
            num -= 10;
            target[count++] = 'X';
        }
        else if(num >= 9) {
            num -= 9;
            target[count++] = 'I';
            target[count++] = 'X';
        }

        else if(num >= 5) {
            num -= 5;
            target[count++] = 'V';
        }
        else if(num >= 4) {
            num -= 4;
            target[count++] = 'I';
            target[count++] = 'V';
        }

        else {
            num -= 1;
            target[count++] = 'I';
        }
    }
}
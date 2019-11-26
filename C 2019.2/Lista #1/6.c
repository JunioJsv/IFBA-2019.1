#include <stdio.h>
#include <math.h>
#include <ctype.h>
#include <stdlib.h>

// Jeovane Santos Viana
/*
* 6º) Um dos sistemas de encriptação mais antigos é atribuído a Júlio César: se uma letra a ser encriptada é a letra de
* número N do alfabeto, substitua-a com a letra (N + K), onde K é um número inteiro constante (César utilizava K = 3).
* Usualmente consideramos o espaço como deslocamento zero e todos os cálculos são realizados com módulo-27.
* Dessa forma, para K = 1 a mensagem Ataque ao amanhecer se torna bubrfabpabnboifdfs.
*   a) Faça uma função que receba como parâmetros uma mensagem e um valor de K e retorne a mensagem
*   criptografada pelo código de César. Fraquezas do algoritmo: apenas 26 chaves possíveis.
*
*   b) Faça uma função que receba como parâmetros uma mensagem e um valor de K e retorne a mensagem
*   descriptografada pelo código de César. Fraquezas do algoritmo: apenas 26 chaves possíveis. 
*/

char * cript(char * msg, int key, int size);
char * uncript(char * msg, int key, int size);

int main() {
    char * msg = malloc(sizeof(char) * 128);
    int key = 0, opcao = 0;

    while(1) {
        puts("1) Codificar\n2) Decodificar\nOpcao:");
        scanf(" %d", &opcao);
        switch(opcao) {
            case 1:
                puts("Digite uma palavra e uma key (ate 25):");
                scanf(" %128[^\n] %d", msg, &key);
                printf("[!] %s > %s\n\n", msg, cript(msg, key, 128));
                break;
            case 2:
                puts("Digite uma palavra codificada e uma key (ate 25):");
                scanf(" %128[^\n] %d", msg, &key);
                printf("[!] %s > %s\n\n", msg, uncript(msg, key, 128));
                break;
            default:
                puts("Opcao invalida!");
        }
    }
    
    return 0;
}

char * cript(char * msg, int key, int size) {
    char * cmsg = (char *) malloc(sizeof(char) * size);
    int ckey = abs(key);

    for(int index = 0; index < size && msg[index] != '\0'; index++) {
        msg[index] = (char) tolower(msg[index]);

        cmsg[index] = (char) msg[index] != ' ' ?
                        ((int) msg[index] + ckey) <= 'z' ?
                            ((int) msg[index] + ckey) :
                        abs(msg[index] + ckey) - 26 :
                      '0';
    }
    return cmsg;
}

char * uncript(char * cmsg, int key, int size) {
    char * umsg = (char *) malloc(sizeof(char) * size);
    int ukey = abs(key);

    for(int index = 0; index < size && cmsg[index] != '\0'; index++) {
        cmsg[index] = (char) tolower(cmsg[index]);

        umsg[index] = (char) cmsg[index] != '0' ?
                        ((int) cmsg[index] - ukey) >= 'a' ?
                            ((int) cmsg[index] - ukey) :
                        ((int) cmsg[index] - ukey) + 26 :
                      ' ';
    }
    return umsg;
}
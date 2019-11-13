#include <stdio.h>
#include <math.h>
#include <ctype.h>
#include <stdlib.h>

// Jeovane Santos Viana
/*
* 6�) Um dos sistemas de encripta��o mais antigos � atribu�do a J�lio C�sar: se uma letra a ser encriptada � a letra de
* n�mero N do alfabeto, substitua-a com a letra (N + K), onde K � um n�mero inteiro constante (C�sar utilizava K = 3).
* Usualmente consideramos o espa�o como deslocamento zero e todos os c�lculos s�o realizados com m�dulo-27.
* Dessa forma, para K = 1 a mensagem Ataque ao amanhecer se torna bubrfabpabnboifdfs.
*   a) Fa�a uma fun��o que receba como par�metros uma mensagem e um valor de K e retorne a mensagem
*   criptografada pelo c�digo de C�sar. Fraquezas do algoritmo: apenas 26 chaves poss�veis.
*
*   b) Fa�a uma fun��o que receba como par�metros uma mensagem e um valor de K e retorne a mensagem
*   descriptografada pelo c�digo de C�sar. Fraquezas do algoritmo: apenas 26 chaves poss�veis. 
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
                        abs(msg[index] + ckey) - 25 :
                      'a';
    }
    return cmsg;
}

char * uncript(char * cmsg, int key, int size) {
    char * umsg = (char *) malloc(sizeof(char) * size);
    int ukey = abs(key);

    for(int index = 0; index < size && cmsg[index] != '\0'; index++)
        umsg[index] = (char) cmsg[index] != 'a' ?
                        ((int) cmsg[index] - ukey) >= 'a' ?
                            ((int) cmsg[index] - ukey) :
                        ((int) cmsg[index] - ukey) + 25 :
                      ' ';

    return umsg;
}
#include <stdio.h>
#include <locale.h>
#include <stdlib.h>

/*
Faça um algoritmo que calcule o troco e informe a quantidade de cada cédula a ser devolvida
a um cliente. O algoritmo deve pedir que o usuário digite o valor total da compra e o valor em
R$ que ele efetivamente pagou. Considerar que o troco seja dado em notas de 50, 20, 10, 5, 2 e
1 real. Desprezar os centavos, assumir apenas valores inteiros.
*/

int main() {
    setlocale(LC_ALL, "Portuguese");
    int total = 0, pago = 0, troco;
    int q50 = 0, q20 = 0, q10 = 0, q5 = 0, q2 = 0, q1 = 0;

    puts("Digite na ordem, 1º O valor total da compra, 2º O quanto você pagou.");
    scanf("%d %d", &total, &pago);

    // Notas de 50, 20, 10, 5, 2, 1
    if(pago >= total) {
        troco = pago - total;

        while(troco != 0) {
            if(troco/50 > 0) { q50 += troco/50; troco %= 50; }
            else if(troco/20 > 0) { q20 += troco/20; troco %= 20; }
            else if(troco/10 > 0) { q10 += troco/10; troco %= 10; }
            else if(troco/5 > 0) { q5 += troco/5; troco %= 5; }
            else if(troco/2 > 0) { q2 += troco/2; troco %= 2; }
            else { q1 += troco/1; troco %= 1; }
        }

        printf("Nº Notas de 50: %d\n", q50);
        printf("Nº Notas de 20: %d\n", q20);
        printf("Nº Notas de 10: %d\n", q10);
        printf("Nº Notas de 5: %d\n", q5);
        printf("Nº Notas de 2: %d\n", q2);
        printf("Nº Notas de 1: %d\n", q1);
    } else puts("Dados invalidos\n!");
    system("PAUSE");
    return 0;
}

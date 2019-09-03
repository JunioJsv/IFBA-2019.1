// c)  Elaborar  um algoritmopara lerum  nÃºmero  inteiro  de  2  (duas)casas  e exibira  soma  dos algarismos
// Jeovane Santos

#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main() {
	setlocale(LC_ALL, "Portuguese");

	char num[2] = {'0', '0'};

	puts("Digite um número inteiro de duas casas decimais: ");
	scanf("%2s", num);


	// Qualquer char que representa um inteiro em ASCII -48 retornara o seu valor representado.
	printf("A soma dos algarismos %c e %c é %d\n", num[0], num[1], (num[0] - 48) + (num[1] - 48));

	system("PAUSE");
	return 0;
}
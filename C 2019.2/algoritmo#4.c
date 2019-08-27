// Jeovane Santos 27/08/2019

#include <stdio.h>
#include <locale.h>
#include <stdlib.h>

int main() {
	char nome[2][128];

	setlocale(LC_ALL, "Portuguese");

	printf("Digite o seu nome: ");
	scanf("%128s", &nome[0]);
	printf("Digite o seu sobrenome: ");
	scanf("%128s", &nome[1]);

	printf("Nome completo: %s %s\n", nome[0], nome[1]);
	system("PAUSE");
}
// a) Elaborar um algoritmo para ler a base e a altura de um ret�ngulo e exibir per�metro e a �rea.
// Jeovane Santos

#include <stdio.h>
#include <locale.h>
#include <stdlib.h>

int main() {
	setlocale(LC_ALL, "Portuguese");

	unsigned int base, altura;

	puts("Digite a base do do ret�ngulo: ");
	scanf("%d", &base);
	puts("Agora digite a altura do ret�ngulo: ");
	scanf("%d", &altura);

	// Per�metro: 2a + 2b e Area: a * b
	printf("Per�metro: %d\nArea: %d\n", 2*base + 2*altura, base*altura);
	system("PAUSE");
	return 0;
}
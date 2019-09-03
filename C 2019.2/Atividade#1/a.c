// a) Elaborar um algoritmo para ler a base e a altura de um retângulo e exibir perímetro e a área.
// Jeovane Santos

#include <stdio.h>
#include <locale.h>
#include <stdlib.h>

int main() {
	setlocale(LC_ALL, "Portuguese");

	unsigned int base, altura;

	puts("Digite a base do do retângulo: ");
	scanf("%d", &base);
	puts("Agora digite a altura do retângulo: ");
	scanf("%d", &altura);

	// Perímetro: 2a + 2b e Area: a * b
	printf("Perímetro: %d\nArea: %d\n", 2*base + 2*altura, base*altura);
	system("PAUSE");
	return 0;
}
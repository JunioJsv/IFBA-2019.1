// b) Elaborar um algoritmo que calcule e imprima a área de um triângulo.
// Jeovane Santos

#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main() {
	// Area: (b.a)/2
	setlocale(LC_ALL, "Portuguese");
	printf("A área de um triângulo com base 10 e altura 35 é: %d\n", (10*35)/2);
	system("PAUSE");
	return 0;
}
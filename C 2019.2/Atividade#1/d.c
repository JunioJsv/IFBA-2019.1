// Dado o tamanho do raio de uma circunfer�ncia, calcular a �rea e o per�metro da mesma
// Jeovane Santos

#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <math.h>

int main() {
	setlocale(LC_ALL, "Portuguese");

	float t_raio;

	puts("Digite o tamanho do raio de uma circunfer�ncia: ");
	scanf("%f", &t_raio);
	// Area: PI.r^2, Per�metro: 2PI.r
	printf("Area: %.2f\nPer�metro: %.2f\n", M_PI*pow(t_raio, 2), 2*M_PI*t_raio);

	system("PAUSE");
	return 0;
}
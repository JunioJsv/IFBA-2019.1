// Dado o tamanho do raio de uma circunferência, calcular a área e o perímetro da mesma
// Jeovane Santos

#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <math.h>

int main() {
	setlocale(LC_ALL, "Portuguese");

	float t_raio;

	puts("Digite o tamanho do raio de uma circunferência: ");
	scanf("%f", &t_raio);
	// Area: PI.r^2, Perímetro: 2PI.r
	printf("Area: %.2f\nPerímetro: %.2f\n", M_PI*pow(t_raio, 2), 2*M_PI*t_raio);

	system("PAUSE");
	return 0;
}
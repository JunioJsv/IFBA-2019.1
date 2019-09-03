/* Escreva um algoritmo para ler as dimensões de uma cozinha retangular (comprimento, largura e altura),
calcular e escrever a quantidade de caixas de azulejos para se colocar em todas as suas paredes
(considere que não será descontada a área ocupada por portas e janelas). Cada caixa de azulejos possui 1,5 m².
A área total em m² é igual ao comprimento total das paredes multiplicado pela altura e somado com a área do piso
(comprimento x largura). */
 
// Jeovane Santos Viana

#include <stdio.h>
#include <locale.h>
#include <stdlib.h>

// 1.5m^2
#define AREA_DE_UMA_CAIXA 1.5

int main() {
	setlocale(LC_ALL, "Portuguese");
	float comprimento, largura, altura;
	int n_caixas = 0;

	puts("Informe os seguintes dados em sequência, 1º Comprimento, 2º Largura, 3º Altura.");
	scanf("%f %f %f", &comprimento, &largura, &altura);

	// Area total das duas paredes do comprimento
	float area_do_comprimento = (comprimento * altura) * 2;
	// Area total das duas paredes da largura
	float area_da_largura = (largura * altura) * 2;
	// Area somada das quatro paredes
	float area_total_das_paredes = area_do_comprimento + area_da_largura;

	for(; n_caixas * AREA_DE_UMA_CAIXA < area_total_das_paredes; n_caixas++);

	printf("É nescessario %d caixas de azulejos para preenxer as paredes.\n", n_caixas);

	system("PAUSE");
	return 0;
}
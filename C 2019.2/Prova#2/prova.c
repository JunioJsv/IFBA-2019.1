#include <stdio.h>
#include <locale.h>
#include <stdlib.h>

// Jeovane Santos Viana
// 06/11/2019
// Use o compilador TCC(Tiny C Compiler)
int jogadores[23];
int numero = -1;
int p_total = 0;

int main() {
	setlocale(LC_ALL, "Portuguese");
	puts("Enquete: Quem foi o melhor jogador?");
	while(numero != 0) {
		printf("Número do jogador (0=fim): ");
		fflush(stdin);
		scanf(" %d", &numero);
		switch(numero) {
			case 1 ... 23:
				jogadores[numero - 1] += 1;
				break;
			default:
				puts("Informe um valor entre 1 e 23 ou 0 para sair.");
		}
	}
	puts("\nResultado da votação:");
	puts("Jogador 	Votos 	% Porcentagem");
	for(int s_index = 0; s_index < 23; s_index++) {
		p_total += jogadores[s_index];
	}
	for(int index = 0; index < 23; index++) {
		if(jogadores[index] > 0) {
			float porcentagem = ((float) jogadores[index] / p_total) * 100.0f;
			printf("%d 		%d 	%.2f%%\n",
				index + 1,
				jogadores[index],
				porcentagem);
		}
	}
	printf("Foram computados %d votos.\n", p_total);
	system("PAUSE");
	return 0;
}
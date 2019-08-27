// Jeovane Santos 27/08/2019

#include <stdio.h>
#include <locale.h>
#include <stdlib.h>

int main() {
	setlocale(LC_ALL, "Portuguese");
	char livro[2][128];
	unsigned int ano_lancamento = 0;

	// Título: String
	printf("Digite o título do livro: ");
	scanf("%128[^\n]", &livro[0]);
	getchar();
	
	// Autor: String
	printf("Digite o nome do autor: ");
	scanf("%128[^\n]", &livro[1]);

	// Ano de lançamento: Unsigned Int
	printf("Digite o ano de publicação: ");
	scanf("%i", &ano_lancamento);

	system("CLS");

	printf("Título: %s\nAutor: %s\nPublicado a %i anos\n", 
	livro[0],
	livro[1],
	2019 - ano_lancamento);

	system("PAUSE");

	return 0;
}

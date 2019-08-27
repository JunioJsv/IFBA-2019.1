// Jeovane Santos 27/08/2019

#include <stdio.h>
#include <locale.h>
#include <stdlib.h>

int main() {
	setlocale(LC_ALL, "Portuguese");
	char livro[2][128];
	unsigned int ano_lancamento = 0;

	// T�tulo: String
	printf("Digite o t�tulo do livro: ");
	scanf("%128[^\n]", &livro[0]);
	getchar();
	
	// Autor: String
	printf("Digite o nome do autor: ");
	scanf("%128[^\n]", &livro[1]);

	// Ano de lan�amento: Unsigned Int
	printf("Digite o ano de publica��o: ");
	scanf("%i", &ano_lancamento);

	system("CLS");

	printf("T�tulo: %s\nAutor: %s\nPublicado a %i anos\n", 
	livro[0],
	livro[1],
	2019 - ano_lancamento);

	system("PAUSE");

	return 0;
}

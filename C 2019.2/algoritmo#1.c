#include "stdio.h"
#include "string.h"
#include "locale.h"

//Jeovane Santos

/*
(5.0 pontos) Deseja-se um programa que apresente as funcionalidades esboçadas por meio do
menu a seguir:

1. Lançar média
2. Mostrar a média por nome
3. Informações estudantes acima da média
4. Mostrar nome, média e situação
5. Sair

Na opção 1 deve ser possível registrar o nome e a média de um estudante. Na opção 2 deve ser
possível informar um nome e obter em resposta a média do aluno, caso o nome informado seja um
nome lançado no sistema. Na opção 3 deve ser possível ver o nome e a média de cada um dos
estudantes que obtiveram média superior à média obtida pela turma (todos os alunos e médias
lançados). Na opção 4 deve ser possível ver todos os alunos lançados, suas respectivas médias e
situações. Por fim, na opção 5 deve sair. A situação é detalhada na tabela a seguir.
*/

int main() {
	//Salvar com a codificação Windows 1252
	setlocale(LC_ALL, "Portuguese");

	int opcao = -1;
	int count = 0;
	char nomes[1024][32];
	float medias[1024];

	char nome[1024];
	int index = -1;
	char situacao[16];

	char menu[] = {"\n1. Lançar média\n2. Mostrar a média por nome\n3. Informações estudantes acima da média\n4. Mostrar nome, média e situação\n5. Sair\nOpção: "};

	while(opcao != 5) {

		printf(menu);
		scanf("%i", &opcao);

		switch(opcao) {
			case 1:
				fflush(stdin);
				printf("Nome: ");
				scanf("%32[^\n]", nomes[count]);
				printf("Media: ");
				scanf("%f", &medias[count]);
				count++;
				break;

			case 2:
				fflush(stdin);
				printf("Nome: ");
				scanf("%32[^\n]", nome);
				for(int i = 0; i < count; ++i) {
					if (strcmp(nome, nomes[i]) == 0) {
						index = i;
					}
				}
				if(index != -1) {
					printf("A media de %s é %f.\n", nome, medias[index]);
				}
				else {
					puts("Aluno não encontrado.");
				}
				index = -1;
				break;

			case 3:
				for(int i = 0; i < count; ++i)
				{
					if(medias[i] > 7.0) {
						printf("%s esta acima da media com %f pontos.\n", nomes[i], medias[i]);
					}
				}
				break;

			case 4:
				for (int i = 0; i < count; ++i) {
					if (medias[i] >= 7) {
						strcpy(situacao, "Aprovado\0");
					}
					else if(medias[i] < 2.5) {
						strcpy(situacao, "Reprovado\0");
					}
					else {
						strcpy(situacao, "Prova final\0");
					}

					printf("Nome: %s, Media: %f, Situação: %s\n", nomes[i], medias[i], situacao);
				}
				break;

			default:
				if(opcao != 5) puts("Opção invalida!");
				break;
		}
	}

	return 0;
}
#include "stdio.h"
#include "string.h"
#include "locale.h"

//Jeovane Santos

/*
(5.0 pontos) Deseja-se um programa que apresente as funcionalidades esbo�adas por meio do
menu a seguir:

1. Lan�ar m�dia
2. Mostrar a m�dia por nome
3. Informa��es estudantes acima da m�dia
4. Mostrar nome, m�dia e situa��o
5. Sair

Na op��o 1 deve ser poss�vel registrar o nome e a m�dia de um estudante. Na op��o 2 deve ser
poss�vel informar um nome e obter em resposta a m�dia do aluno, caso o nome informado seja um
nome lan�ado no sistema. Na op��o 3 deve ser poss�vel ver o nome e a m�dia de cada um dos
estudantes que obtiveram m�dia superior � m�dia obtida pela turma (todos os alunos e m�dias
lan�ados). Na op��o 4 deve ser poss�vel ver todos os alunos lan�ados, suas respectivas m�dias e
situa��es. Por fim, na op��o 5 deve sair. A situa��o � detalhada na tabela a seguir.
*/

int main() {
	//Salvar com a codificação Windows 1252
	setlocale(LC_ALL, "Portuguese");

	int opcao = -1;
	int count = 0;
	char nomes[1024][128];
	float medias[1024];

	char nome[1024];
	int index = -1;
	char situacao[16];

	char menu[] = {"\n1. Lançar média\n2. Mostrar a média por nome\n3. Informações de estudantes acima da média\n4. Mostrar nome, média e situação\n5. Sair\nOpção: "};

	while(opcao != 5) {

		printf(menu);
		scanf("%i", &opcao);
		getchar();

		switch(opcao) {
			case 1:
				printf("Nome: ");
				scanf("%128[^\n]", nomes[count]);
				printf("Média: ");
				scanf("%f", &medias[count]);
				count++;
				break;
			case 2:
				printf("Nome: ");
				scanf("%128[^\n]", nome);
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
				for(int i = 0; i < count; ++i) {
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
				if(opcao != 5) puts("Opçãoo invalida!");
				break;
		}
	}
	return 0;
}

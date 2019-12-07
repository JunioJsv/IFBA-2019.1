#include <stdio.h>
#include <locale.h>

typedef struct {
	int codigo;
	char nome[128];
	float preco;
	int estoque;
} medicamento;

int main() {
	int opcao = (int) NULL, quantidade = 0;
	medicamento medicamentos[512];

	setlocale(LC_ALL, "Portuguese");

	while(opcao != 6) {
		int buff_indice = -1, codigo = -1, estoque = -1;

		printf("""
			============================
			Farmacia Porto Saude
			============================
			1. Cadastrar medicamento.
			2. Efetuar venda.
			3. Atualizar preços.
			4. Relatório de estoque.
			5. Relatório de financeiro.
			6. Sair.
			----------------------------
			> Opção: """);
		scanf(" %d", &opcao);
		switch(opcao) {
			case 1:
				printf("[>] Codigo: ");
				scanf(" %d", &medicamentos[quantidade].codigo);
				printf("[>] Nome: ");
				scanf(" %128[^\n]", medicamentos[quantidade].nome);
				printf("[>] Preço: ");
				scanf(" %f", &medicamentos[quantidade].preco);
				printf("[>] Estoque: ");
				scanf(" %d", &medicamentos[quantidade++].estoque);
				break;
			case 2:
				printf("[>] Codigo: ");
				scanf(" %d", &codigo);
				printf("[>] Quantidade: ");
				scanf(" %d", &estoque);

				for(int indice = 0; indice < quantidade; indice++)
					if(medicamentos[indice].codigo == codigo)
						buff_indice = indice;

				if(buff_indice != -1 && estoque <= medicamentos[buff_indice].estoque) {
					printf("[!] Preço total: R$%2.f", (float) estoque * medicamentos[buff_indice].preco);
					medicamentos[buff_indice].estoque -= estoque;
				} else puts("[!] O estoque é insufuciente ou o medicamento não foi encontrado.");
				break;
			case 3:
				for(int indice = 0; indice < quantidade; indice++) {
					if(medicamentos[indice].codigo % 2 == 0 && medicamentos[indice].preco > 25.0f)
						medicamentos[indice].preco += (float) medicamentos[indice].preco * 0.08f;
					else if(medicamentos[indice].codigo % 2 == 0)
						medicamentos[indice].preco += (float) medicamentos[indice].preco * 0.05f;
					else if(medicamentos[indice].preco > 25.0f)
						medicamentos[indice].preco += (float) medicamentos[indice].preco * 0.03f;
				}
				break;
			case 4:
				printf("""
			CODIGO	NOME	ESTOQUE	PREÇO
				""");
				for(int indice = 0; indice < quantidade; indice++)
					printf("""
			%d	%.5s..	%d	R$%.2f
					""",
					medicamentos[indice].codigo,
					medicamentos[indice].nome,
					medicamentos[indice].estoque,
					medicamentos[indice].preco);
				break;
			case 5:
				printf("""
			CODIGO	NOME	ESTOQUE	PREÇO	TOTAL
				""");
				for(int indice = 0; indice < quantidade; indice++)
					printf("""
			%d	%.5s..	%d	R$%.2f	R$%.2f
					""",
					medicamentos[indice].codigo,
					medicamentos[indice].nome,
					medicamentos[indice].estoque,
					medicamentos[indice].preco,
					medicamentos[indice].preco * medicamentos[indice].estoque);
				break;
			case 6:
				return 0;
			default:
				puts("[!] Opção invalida.");
		}
	}
	return 0;
}
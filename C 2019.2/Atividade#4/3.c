#include <stdio.h>

// Jeovane Santos Viana
// Questão 3 da Ivet

int vip = 150, // R$1500
	super_vip = 250, // R$2500
	ultra_vip = 100; // R$5000

void relatorio();

int main() {
	int opcao = -1;

	while(opcao != 5 &&
	(vip > 0 || super_vip > 0 || ultra_vip > 0)) {
		int quantidade = 0;
		printf(
			"""
			+-----------------------------+
			1. Ingresso vip.              |
			2. Ingresso super vip.        |
			3. Ingresso ultra vip.        |
			4. Exibir relatorio de vendas.|
			5. Sair.                      |
			+-----------------------------+
			""");
		printf("> Opcao: ");
		scanf(" %d", &opcao);
		switch(opcao) {
			case 1:
				printf("\n! Quantos ingressos voce dejesa? ");
				scanf(" %d", &quantidade);
				if(quantidade <= vip) {
					vip -= quantidade;
					puts("[!] Compra realizada com sucesso!");
				} else puts("[!] Ingressos insuficientes.");
				break;
			case 2:
				printf("\n! Quantos ingressos voce dejesa? ");
				scanf(" %d", &quantidade);
				if(quantidade <= super_vip) {
					super_vip -= quantidade;
					puts("[!] Compra realizada com sucesso!");
				} else puts("[!] Ingressos insuficientes.");
				break;
			case 3:
				printf("\n! Quantos ingressos voce dejesa? ");
				scanf(" %d", &quantidade);
				if(quantidade <= ultra_vip) {
					ultra_vip -= quantidade;
					puts("[!] Compra realizada com sucesso!");
				} else puts("[!] Ingressos insuficientes.");
				break;
			case 4:
				relatorio();
				break;
			case 5:
				break;
			default:
				puts("[!] Opcao invalida.");
		}
	}
	relatorio();
	return 0;
}

void relatorio() {
	printf(
		"""
		! Valor total arrecadado R$%.2f.
		! Ingressos vips vendidos %d, disponiveis %d.
		! Ingressos super vips vendidos %d, disponiveis %d.
		! Ingressos ultra vips vendidos: %d, disponiveis %d.
		! Ocupacao do teatro %d%%.
		""",
		(150 - vip) * 1500.00f +
		(250 - super_vip) * 2500.00f +
		(100 - ultra_vip) * 5000.00f,
		150 - vip, vip,
		250 - super_vip, super_vip,
		100 - ultra_vip, ultra_vip,
		100 - (500 - ((150 - vip) + (250 - super_vip) +  (100 - ultra_vip))) * 100 / 500
		);
}
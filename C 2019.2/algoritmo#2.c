#include "stdio.h"
#include "locale.h"
#include "string.h"
#include "stdlib.h"
#include "math.h"

// Jeovane Santos 10/09/2019

int decodificar_binario(char bits[]);
void codificar_inteiro(int num, char var[]);

char codificado[2048];

int main(int argc, char const *argv[]) {
	int opcao = -1;
	int numero_inteiro = 0;
	char binario[1024];

	setlocale(LC_ALL, "Portuguese");

	while(1) {
		puts("----- SEPARADOR -----");
		printf("%s", "1. Decodificar binário.\n2. Codificar inteiro em binário.\n3. Limpar tela.\n0. Sair\nOpção: ");
		scanf("%i", &opcao);
		switch(opcao) {
			case 1:
				printf("%s", "Digite a senquência de bits: ");
				scanf("%1024s", binario);
				printf("A decodificação de %s é %i\n", binario, decodificar_binario(binario));
				break;
			case 2:
				printf("%s", "Digite um número inteiro: ");
				scanf("%d", &numero_inteiro);
				codificar_inteiro(numero_inteiro, codificado);
				printf("%d codificado em binário fica %s\n", numero_inteiro, codificado);
				break;
			case 3:
				system("CLS");
				break;
			case 0:
				exit(0);
			default:
				puts("Opção invalida");
				break;
		}
	}
	return 0;
}

int decodificar_binario(char bits[]) {
	int decodificado = 0;
	int valor_do_bit = pow(2, strlen(bits) -1);
	int index = 0;

	for(; bits[index] != '\0'; index++) {
		if(bits[index] == '1') decodificado += valor_do_bit;
		valor_do_bit -= valor_do_bit / 2;
	}

	return decodificado;
}

void codificar_inteiro(int num, char var[]) {
	strcpy(var, "");
	int resultado = num;
	int index = 0;
	char buffer[2048] = "";

	for(; resultado != 1; resultado = resultado/2) {
		var[index++] = resultado%2 + '0';
	}

	if (resultado == num) var[index] = resultado + '0';
	else var[index] = resultado + '0';

	index = 0;
	for(int i = strlen(var) - 1; i >= 0; i--) {
		buffer[index] = var[i]; index++;
	}
	strcpy(var, buffer);
}
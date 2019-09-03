/* Um trabalhador recebe R$ 40,00 por hora normal trabalhada e um acr�scimo de 50%, sobre este valor, para cada hora extra trabalhada.
Fornecidas as quantidades de horas normais e horas extras trabalhadas calcule qual o valor do seu sal�rio ap�s uma semana de trabalho. */

#include <stdio.h>
#include <locale.h>

// Pre�o por hora
#define P_HORA 40.0f
// Pre�o extra por hora
#define PE_HORA P_HORA*0.50f

int main() {
	setlocale(LC_ALL, "Portuguese");
	float salario = 0.0;
	int h_normal, h_extra;

	puts("Digite a carga horaria padr�o de trabalho:");
	scanf("%d", &h_normal);
	puts("Digite a carga horaria excedente de trabalho:");
	scanf("%d", &h_extra);

	printf("Sal�rio diario: %.2f\nSal�rio semanal: %.2f", h_normal * P_HORA + h_extra * PE_HORA,
	(h_normal * P_HORA + h_extra * PE_HORA) * 7);

	return 0;
}
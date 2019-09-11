#include <stdio.h>
#include <locale.h>
#include <stdlib.h>

int main() {
	setlocale(LC_ALL, "Portuguese");
	float total = 0.0f;
	char meia = 'n', f3D = 'n';
	int dia = -1;

	printf("Digite o preço total do engresso: ");
	scanf(" %f", &total);

	printf("O tipo do seu engresso é meia? s/n ");
	scanf(" %1c", &meia);

	printf("Qual é o dia da semana? 1 Para Domingo, 2 Para segunda ... ");
	scanf(" %1i", &dia);

	printf("O filme é 3D? s/n ");
	scanf(" %1c", &f3D);

	if(meia == 's') total /= 2;
	else if(dia == 2 || dia == 3 || dia == 4) {
		total -= total * 0.25;
	}
	if(f3D == 's') total += 12.00f;

	printf("O preço final ficou: R$%.2f\n", total);
	system("PAUSE");
	return 0;
}
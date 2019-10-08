#include <stdio.h>

int main() {
	int intarr[1024];
	int count = 0;
	int buff1 = 0;
	int buff2 = 0;
	float sum = 0f;

	while(buff2 != buff1 * 2) {
		printf("[1] Digite o primeiro numero: ");
		scanf(" %d", &buff1);
		printf("[2] Digite o segundo numero: ");
		scanf(" %d", &buff2);
		sum += buff1+ buff2;
		count += 2;
	}

	printf("A media dos numeros %.2f total %d de pares", sum/count, count/2);
	return 0;
}
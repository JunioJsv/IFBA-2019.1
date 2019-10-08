#include <stdio.h>

int main() {
	int pares = 0;
	int buff = 0;

	for(int i = 0; i < 50; i++) {
		printf("Digite um inteiro: ");
		scanf(" %d", &buff);
		if(buff%2 == 0) pares++;
	}

	printf("%d dos 50 numeros digitados são pares!", pares);
}
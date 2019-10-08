#include <stdio.h>

int main() {
	int n, i, j;
	puts("Digite em sequencia n, i e j:");
	scanf("%d%d%d", &n, &i, &j);
	for(int l = 0; l <= n; l++) {
		if(l%i == 0 || l%j == 0) printf("%d, ", l);
	}
	return 0;
}
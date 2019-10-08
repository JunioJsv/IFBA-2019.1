#include <stdio.h>

int main() {
	int res = 0, mult = 1;

	for(int tab = 1; res < 9*9; tab++) {
		for(; mult <= 9; mult++) {
			res = tab * mult;
			printf("%dx%d = %d\n", tab, mult, res);
		}
		mult = 1;
	}

	return 0;
}
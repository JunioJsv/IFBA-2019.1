programa
{
	
	funcao inicio()
	{
		inteiro n1, n2
		escreva("Dois numeros:\n")
		leia(n1, n2)

		se(n1%n2 == 0 e n2%n1 == 0) {
			escreva("Os dois numeros são divisiveis entre si.")
		} senao se(n1%n2 == 0) {
			escreva("O primeiro numero é divisivel pelo segundo.")
		} senao se (n2%n1 == 0) {
			escreva("O segundo numero é divisivel pelo pimeiro.")
		} senao {
			escreva("Não á relação de divisibilidade inteira entre eles.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 264; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
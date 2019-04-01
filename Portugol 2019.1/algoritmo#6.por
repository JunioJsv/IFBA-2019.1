programa
{
	
	funcao inicio()
	{
		real salarioFixo, vendas

		escreva("Qual é o salário fixo? ")
		leia(salarioFixo)
		escreva("Qual foi o valor total de vendas? ")
		leia(vendas)

		se(vendas <= 1500.0) {
			escreva("Seu salário é exatamente: R$", salarioFixo + 0.03 * vendas)
		} senao {
			escreva("Seu salário é exatamente: R$", (salarioFixo + 0.03 * 1500.0) + (0.05 * (vendas - 1500.0)))
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 211; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
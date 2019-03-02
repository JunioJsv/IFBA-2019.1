/*Jeovane Santos Viana 02/03/19
	Calcular IMC*/

programa
{
	inclua biblioteca Matematica --> math
	
	funcao inicio()
	{
		//IMC peso / altura ao quadrado
		real altura, peso
		escreva("Qual é sua altura: ")
		leia(altura)
		escreva("Qual é seu peso: ")
		leia(peso)

		escreva("Seu IMC é: ", peso / math.potencia(altura, 2.0))
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 290; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
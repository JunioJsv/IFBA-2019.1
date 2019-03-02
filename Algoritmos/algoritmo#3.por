/*Jeovane Santos Viana 02/03/19
	Obter o valor de um terreno com a metragem de metros cubicos*/

programa
{
	
	funcao inicio()
	{
		real lateral, frente, vMetro

		escreva("Qual é a lateral do terreno em metros: ")
		leia(lateral)
		escreva("Qual é a frente do terreno em metros: ")
		leia(frente)
		escreva("O valor do metro quadrado: ")
		leia(vMetro)

		escreva("\n O valor do terreno é: ", "R$" + vMetro * (lateral * frente), "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 378; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
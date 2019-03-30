/**
 * Faça um programa que leia um inteiro de 3 digitos
 * e informe a cetena, dezena e unidade.
 */

programa
{
	
	funcao inicio()
	{
		inteiro num
		escreva("Digite um inteiro de 3 digitos: ")
		leia(num)
		escreva("Centena: " + (num%1000)/100, " Dezena: " + (num%100)/10, " Unidade: " + num%10)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 292; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
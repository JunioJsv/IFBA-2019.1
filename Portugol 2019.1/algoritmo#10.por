/*
 * Jeovane Santos 30/03/2019
 * Faça um pogama que leia a quantidade de alunos
 * presentes e moste s sera possivl ou nao executar
 * a atividade proposta para o dia. Ela deve se feita
 * em trios e ninguem deve deixa de paicipar
 */

programa
{
	
	funcao inicio()
	{
		inteiro qtdAlunos = 0
		escreva("Qual é a quantidade de alunos: ")
		leia(qtdAlunos)

		se(qtdAlunos%3 == 0) {
			escreva("Da para fazer a atividade.")
		} senao {
			escreva("Não da para fazer a atividade.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 483; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
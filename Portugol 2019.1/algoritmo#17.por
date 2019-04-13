/*
 * Jeovane Santos Viana 13/04/2019
 * 
 * Boleto:
 * 	Vence: 09/05
 * Juros:
 * 	Até 5 dias: 1.5% ao dia
 * 	6 a 10 dias: 2.8%
 * 	acima de 10 dias: 4.2%
 * Fixo:
 * 	Multa: 8%
 */


programa
{
	
	funcao inicio()
	{
		real valBoleto = 0.0, valJuros = 0.0
		inteiro dia = 1, mes = 1

		escreva("Qual é o valor do boleto? ")
		leia(valBoleto)
		escreva("Que dia você vai pagar? ")
		leia(dia)
		escreva("Em que mês? ")
		leia(mes)
		//diferenca = dia - 9

		se(mes < 5 ou mes == 5 e dia <= 9) {
			//Sem juros e multas
			escreva("Valor do boleto no dia ", dia, "/", mes, " é R$", valBoleto)
		} senao se(mes == 5) {
			//Com multa e juros

			se(dia <= 14) {
				//5
				valJuros += valBoleto * 0.015 * (dia - 9)
			} senao se(dia <= 19)  {
				//6 a 10
				valJuros += valBoleto * 0.028 * (dia - 9)
			} senao {
				//Maior que 10
				valJuros += valBoleto * 0.042 * (dia - 9)
			}
			escreva("---------------------------------------")
			escreva("\nValor do boleto no dia ", dia, "/", mes, " é R$", valBoleto + valBoleto * 0.08 + valJuros)
			escreva("\nValor da multa: ", valBoleto * 0.08)
			escreva("\nValor do juros: ", valJuros)
			
		} senao escreva("Não da para pagar o boleto na seguinte data: ", dia, "/", mes)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 936; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
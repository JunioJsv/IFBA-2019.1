programa {

	inclua biblioteca Tipos
	inclua biblioteca Texto
	
	funcao inicio() {
		cadeia origem, destino 
		inteiro tempo = 0, tempoDigitado = 0, acimaDeCem = 0
		real total = 0.0, minuto, media = 0.0

		para(inteiro quantidade = 0; tempoDigitado >= 0; quantidade++) {
			real valor = 0.0

			media = total / quantidade
			
			escreva("Qual é o seu numero? ")
			leia(origem)
			escreva("Qual é o numero do destinatario? ")
			leia(destino)
			escreva("Qual foi a duração da ligação em segundos? ")
			leia(tempoDigitado) 
			se(tempoDigitado >= 0 ) tempo += tempoDigitado
	
			se(Tipos.cadeia_e_inteiro(origem, 10) e 
			Tipos.cadeia_e_inteiro(destino, 10) e tempoDigitado > 0) {
				
				se(Texto.extrair_subtexto(origem, 0, 3) !=
				Texto.extrair_subtexto(destino, 0, 3)) {
					minuto = 4.0
				} senao minuto = 1.5

				se(tempoDigitado/60 > 60) {
					valor = 60 * minuto
					total += valor
				} senao se(tempoDigitado%60 == 0) {
					valor = (tempoDigitado/60) * minuto
					total += valor
				} senao {
					valor = (Tipos.real_para_inteiro(tempoDigitado/60)) * minuto + minuto
					total += valor
				}

				se(valor > 100.0) acimaDeCem++
				
			} senao se(tempoDigitado > 0) {
				escreva("Numero de telefone invalido!\n")
				se(quantidade >= 0) quantidade--
			}
		}

		escreva("- O tempo total de ligação foi: ", tempo, "s",
			"\n- Quantidade de ligações cujo o valor foi acima de R$100: ", acimaDeCem,
			"\n- Valor médio das ligações: ", media,
			"\n- Total: R$", total)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1188; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {total, 9, 7, 5}-{quantidade, 11, 15, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
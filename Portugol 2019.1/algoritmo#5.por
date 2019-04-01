programa {
	/*
	 Voce recebeu um boleto e junto dele tinham instrucoes que indicavam 3 formas de pagamento:

	 1) Pagamento em conta corrente: neste caso voce deve pagar o valor do boleto.

	 2)Pagamento parcelado: acrescenta-se 12% sobre o valor do boleto e pode ser parcelado em 4 vezes. Mostrar o valor da parcela

	 3)Pagamento minimo: deve-se pagar 25% do valor do boleto. Ao restante deve se adicionar 15% de juros e mostrar na tela qual o valor pedente que restou.

	 Faca um programa que leia o valor do boleto e apresente na tela cada uma das opcoes com seus respectivos valores.
	*/
	
	funcao inicio() {
		real valorBoleto

		//Ler o valor do boleto
		escreva("Qual é o valor do boleto? ")
		leia(valorBoleto)
		limpa()
		escreva("Existem 3 formas de pagamento, sendo elas: \n")
		escreva(" 1º Pagamento em conta corrente: ", "R$", valorBoleto, "\n")
		escreva(" 2º Pagamento parcelado:\n")
		escreva("    Parcelado em 2 vezes: ", "R$", (valorBoleto + (0.12 * valorBoleto)) / 2, "\n")
		escreva("    Parcelado em 3 vezes: ", "R$", (valorBoleto + (0.12 * valorBoleto)) / 3, "\n")
		escreva("    Parcelado em 4 vezes: ", "R$", (valorBoleto + (0.12 * valorBoleto)) / 4, "\n")
		escreva(" 3º Pagamento minimo:\n")
		escreva("    Valor a ser pago(25% do valor total) ", "R$", 0.25 * valorBoleto, ", Valor pendente com juros: ", "R$", (0.75 * valorBoleto) + 0.15 * (0.75 * valorBoleto), "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1038; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
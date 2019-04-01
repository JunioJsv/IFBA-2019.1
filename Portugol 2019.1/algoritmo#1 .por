//Jeovane Santos 27/02/2019

/* Objetivo desse progama:
    Calcular o preço do produto em cada forma de pagamento */

programa {
    
	funcao inicio() {
	    real vCompra, frete, avista, debito, credito
	    
	    escreva("Escreva o valor da compra: ")
	    leia(vCompra)
	    
	    escreva("Escreva o valor do frete: ")
	    leia(frete)

	    avista = (vCompra + frete) - (0.10 * (vCompra + frete))
	    debito = (vCompra + frete) - (0.05 * (vCompra + frete))
	    credito = (vCompra + frete) / 3
	    
	    escreva("\n Valor em dinheiro avista: ", "R$" + avista, "\n Valor em debito: ", "R$" + debito, "\n Valor em credito parcelado em x3: ", "R$" + credito, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 653; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
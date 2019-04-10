/*
 * Jeovane Santos 06/04/2019
 * 
 * Cachoro quente R$4,00
 * Copo de refrigerante R$2,00
 * 
 * Desconto R$1,00
 * 
 */

programa {

	funcao inicio() {	
		inteiro qCachorroQuente, qRefrigerante
	
		escreva("Você quer quantos cachorros quentes? ")
		leia(qCachorroQuente)

		escreva("Você quer quantos refrigerantes? ")
		leia(qRefrigerante)

		se(qRefrigerante - qCachorroQuente / 3 < 0) {
			escreva("Valor total: R$", qCachorroQuente * 4.00 + (qRefrigerante - qCachorroQuente / 3))
		} senao {
			escreva("Valor total: R$", qCachorroQuente * 4.00 + (qRefrigerante - qCachorroQuente / 3) * 2.00)
		}
	}
}


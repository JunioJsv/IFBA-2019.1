/*
 * Jeovane Santos Viana 23/03/2019
 */

programa
{
	
	inclua biblioteca Util
	
	funcao inicio()
	{	
		enquanto(verdadeiro) {
			inteiro sorteio = Util.sorteia(1, 1000)
			inteiro chute = entradaInt("\nChute um numero de 1 a 1000: ")
			escreva("O número sorteado foi ", sorteio)

			se(sorteio > chute) {
				se(sorteio - chute <= 100) {
					escreva("\nVocê chutou bem!")
				} senao {
					escreva("\nVocê chutou mau!")
				}
			} 
			
			senao se(chute > sorteio) {
				se(chute - sorteio <= 100) {
					escreva("\nVocê chutou bem!")
				} senao {
					escreva("\nVocê chutou mau!")
				}
			}
			
			se(chute == sorteio) {
				escreva("\nVocê ganhou!")
			}

			Util.aguarde(2500)
			limpa()
		}
	}

	funcao inteiro entradaInt(cadeia texto) {
		escreva(texto)
		inteiro dado
		leia(dado)
		retorne dado
	}

	funcao cadeia entradaStr(cadeia texto) {
		escreva(texto)
		cadeia dado
		leia(dado)
		retorne dado
	}

	funcao real entradaDouble(cadeia texto) {
		escreva(texto)
		real dado
		leia(dado)
		retorne dado
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 686; 
 * @DOBRAMENTO-CODIGO = [41, 48, 55];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
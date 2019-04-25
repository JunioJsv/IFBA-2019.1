programa
{
	
	funcao inicio()
	{
		inteiro kw = 0, placas = 0, inv4 = 0, inv6 = 0, kwRestantes = 0

		escreva("Quantos KW você quer? ")
		leia(kw)
		kwRestantes = kw

		para(real p = 0.0; p < kw; p += 0.3) {
			placas++
		}

		enquanto(kwRestantes >= 1) {
			se(kwRestantes - 6 >= 0 ou kwRestantes > 4) {
				inv6++
				kwRestantes -= 6
			} senao se(kwRestantes > 0) {
				inv4++
				kwRestantes -= 4
			}
		}
		
		escreva("Deve comprar:\n { ", placas, " } Placas\n { ", inv4," } Inversores 4Kw\n { ", inv6, " } Inversores 6Kw\nPara obter ", kw,"Kw.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 406; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {inv4, 6, 30, 4}-{inv6, 6, 40, 4}-{kwRestantes, 6, 50, 11};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
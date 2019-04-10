programa
{
	funcao inicio()
	{
		inteiro h24, m24
		escreva("Escreva a hora atual e logo em seguida os minutos: ")
		leia(h24, m24)

		se(h24 > 12) {
			escreva("O horario atual é ", h24%12, ":", m24, " PM")
		} senao {
			escreva("O horario atual é ", h24, ":", m24, " AM")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 207; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
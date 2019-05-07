//Jeovane Santos Viana

programa
{
	inclua biblioteca Tipos
	inclua biblioteca Texto
	
	funcao inicio()
	{
		cadeia data
		inteiro dia = 0, mes = 0, ano = 0
		escreva ("Digite uma data no formato dd/mm/aaaa: ")
		leia(data)

		se(Texto.numero_caracteres(data) == 10 e Tipos.cadeia_e_inteiro(Texto.extrair_subtexto(data, 0, 2), 10) e Tipos.cadeia_e_inteiro(Texto.extrair_subtexto(data, 3, 5), 10) e Tipos.cadeia_e_inteiro(Texto.extrair_subtexto(data, 6, 10), 10)) {
			dia = Tipos.cadeia_para_inteiro(Texto.extrair_subtexto(data, 0, 2), 10)
			mes = Tipos.cadeia_para_inteiro(Texto.extrair_subtexto(data, 3, 5), 10)
			ano = Tipos.cadeia_para_inteiro(Texto.extrair_subtexto(data, 6, 10), 10)
			
			se ( dia >= 01 e dia <= 31 e (mes == 01 ou mes == 03 ou mes == 05 ou mes == 07 ou mes == 08 ou mes == 10 ou mes == 12)) escreva ("Data valida!")
			senao se (mes == 2) {
				se(ano%4 == 0 e ano%100 != 0 ou ano%400 == 0) {
					se(dia >= 1 e dia <= 29) escreva ("Data valida!")
					senao escreva ("Data invalida!")
				} senao {
					se(dia >= 1 e dia <= 28) escreva ("Data valida!")
					senao escreva ("Data invalida!")
				}
				
			} senao se ( dia >= 01 e dia <= 30 e (mes == 04 ou mes == 06 ou mes == 09 ou mes == 11)) escreva ("\ndata valida")
			senao escreva ("Data invalida!")
		} senao escreva("Formato invalido!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 694; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
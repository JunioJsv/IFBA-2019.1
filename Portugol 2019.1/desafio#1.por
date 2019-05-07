programa
{
	inclua biblioteca Calendario
	inclua biblioteca Tipos
	inclua biblioteca Texto
	
	cadeia nome, senha
	inteiro dia = 0, mes = 0, ano = 0
	
	funcao inicio() {
		se(entrada_nome()) se(entrada_data()) escreva("SENHA?")
	}

	funcao logico entrada_nome() {
		logico nome_valido = falso
		
		escreva("> [entrada_nome]: Digite seu nome completo: ")
		leia(nome)

		// Verificar se a um sobrenome
		para(inteiro posicao = 0; posicao < Texto.numero_caracteres(nome); posicao++) {
			se(Texto.obter_caracter(nome, posicao) == ' ') nome_valido = verdadeiro
		}

		// Verificar se tem apenas letras e espaços
		se(nome_valido) {
			inteiro erro = 0
			para(inteiro posicao = 0; posicao < Texto.numero_caracteres(nome); posicao++) {
				se(Texto.obter_caracter(Texto.caixa_alta(nome), posicao) == Texto.obter_caracter(Texto.caixa_baixa(nome), posicao) e Texto.obter_caracter(nome, posicao) != ' ') erro++
			}
			se(erro == 0) nome_valido = verdadeiro
			senao nome_valido = falso
		}

		//Verificar se o nome começa ou termina com espaços
		se(nome_valido) {
			se(Texto.obter_caracter(nome, 0) != ' ' e Texto.obter_caracter(nome, Texto.numero_caracteres(nome) - 1) != ' ') nome_valido = verdadeiro
			senao nome_valido = falso
		}

		// Verificar se os nomes estão separados por apenas um espaço
		se(nome_valido) {
			inteiro erro = 0
			para(inteiro posicao = 0; posicao < Texto.numero_caracteres(nome); posicao++) {
				se(Texto.obter_caracter(nome, posicao) == ' ' e Texto.obter_caracter(nome, posicao + 1) == ' ') erro++
			}
			se(erro == 0) nome_valido = verdadeiro
			senao nome_valido = falso
		}

		//Verificar se o nome tem no minimo 3 letras

		se(nome_valido) escreva("> [entrada_nome]: Nome valido.\n")
		senao escreva("> [entrada_nome]: Nome invalido.\n")

		retorne nome_valido
	}

	funcao logico entrada_data() {
		logico data_valida
		cadeia data
		
		escreva ("> [entrada_data]: Digite sua data de nascimento no formato dd/mm/aaaa: ")
		leia(data)

		se(Texto.numero_caracteres(data) == 10 e Tipos.cadeia_e_inteiro(Texto.extrair_subtexto(data, 0, 2), 10) e Tipos.cadeia_e_inteiro(Texto.extrair_subtexto(data, 3, 5), 10) e Tipos.cadeia_e_inteiro(Texto.extrair_subtexto(data, 6, 10), 10)) {
			dia = Tipos.cadeia_para_inteiro(Texto.extrair_subtexto(data, 0, 2), 10)
			mes = Tipos.cadeia_para_inteiro(Texto.extrair_subtexto(data, 3, 5), 10)
			ano = Tipos.cadeia_para_inteiro(Texto.extrair_subtexto(data, 6, 10), 10)
			
			se(dia >= 01 e dia <= 31 e (mes == 01 ou mes == 03 ou mes == 05 ou mes == 07 ou mes == 08 ou mes == 10 ou mes == 12)) data_valida = verdadeiro
			senao se (mes == 2) {
				se(ano%4 == 0 e ano%100 != 0 ou ano%400 == 0) {
					se(dia >= 1 e dia <= 29) data_valida = verdadeiro
					senao data_valida = falso
				} senao {
					se(dia >= 1 e dia <= 28) data_valida = verdadeiro
					senao data_valida = falso
				}
				
			} senao se(dia >= 01 e dia <= 30 e (mes == 04 ou mes == 06 ou mes == 09 ou mes == 11)) data_valida = verdadeiro
			senao data_valida = falso
		} senao data_valida = falso

		se(data_valida) {
			se(ano < Calendario.ano_atual()) data_valida = verdadeiro
			senao se(ano == Calendario.ano_atual() e dia <= Calendario.dia_mes_atual() e mes <= Calendario.mes_atual()) data_valida = verdadeiro
			senao data_valida = falso
		}

		se(data_valida) escreva("> [entrada_data]: Data valida.\n")
		senao escreva("> [entrada_data]: Data invalida.\n")

		retorne data_valida
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1653; 
 * @DOBRAMENTO-CODIGO = [58];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {erro, 27, 11, 4}-{erro, 43, 11, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
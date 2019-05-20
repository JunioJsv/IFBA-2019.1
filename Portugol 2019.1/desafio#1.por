/*
 * Jeovane Santos Viana - Algoritmo 1º semestre
 * Entrada nome completo!
 * Entrada data completa!
 * Entrada senha completa!
 */
 
programa
{
	inclua biblioteca Calendario
	inclua biblioteca Tipos
	inclua biblioteca Texto
	
	cadeia nome, senha
	inteiro dia = 0, mes = 0, ano = 0, senhaCategorias = 0, categorias[4]
	
	funcao inicio() {
		
		entrada_nome()
		entrada_data()
		//Verificar se a senha é forte
		se(entrada_senha()) {
			se(senhaCategorias == 4) escreva("> [ SAIDA ]: Sua senha é forte\n")
			senao se(categorias[3] != 0) escreva("> [ SAIDA ]: Sua senha é media\n")
			senao escreva("> [ SAIDA ]: Sua senha é fraca\n")
		}
	}

	funcao logico entrada_nome() {
		logico nome_valido = falso
		inteiro erros[5]

		// Entrada!
		escreva("> [ENTRADA]: Digite seu nome completo: ")
		leia(nome)

		// Verificar se a um sobrenome! Ok -->
		para(inteiro posicao = 0; posicao < Texto.numero_caracteres(nome); posicao++) {
			se(posicao != 0 e posicao != Texto.numero_caracteres(nome) - 1 e Texto.obter_caracter(nome, posicao) == ' ') {
				erros[0]++
			}
		}
		se(erros[0] == 0) escreva("> [ALERTA!]: Apenas nomes completos são aceitos!\n")
		// <--

		// Verificar se tem apenas letras e espacos! Ok -->
		para(inteiro posicao = 0; posicao < Texto.numero_caracteres(nome); posicao++) {
			se(Texto.obter_caracter(Texto.caixa_alta(nome), posicao) == Texto.obter_caracter(Texto.caixa_baixa(nome), posicao) e Texto.obter_caracter(nome, posicao) != ' ') erros[1]++
		}
		se(erros[1] != 0) escreva("> [ALERTA!]: Nomes com simbulos não são aceitos!\n")
		// <--

		// Verificar se o nome comeca ou termina com espacos! Ok -->
		se(Texto.obter_caracter(nome, 0) == ' ' ou Texto.obter_caracter(nome, Texto.numero_caracteres(nome) - 1) == ' ') erros[2]++
		se(erros[2] != 0) escreva("> [ALERTA!]: O nome não pode ser iniciado nem finalizado com espaços!\n")
		// <--

		// Verificar se os nomes estÃ£o separados por apenas um espaco! Ok -->
		para(inteiro posicao = 0; posicao < Texto.numero_caracteres(nome); posicao++) {
			se(posicao + 1 < Texto.numero_caracteres(nome) e Texto.obter_caracter(nome, posicao) == ' ' e Texto.obter_caracter(nome, posicao + 1) == ' ') erros[3]++
		}
		se(erros[3] != 0) escreva("> [ALERTA!]: Não são aceitos nomes separados por mais de um espaço!\n")
		// <--

		// Verificar se o nome tem no minimo 2 letras! Ok -->
		cadeia cadeia_alvo = ""
		para(inteiro posicao = 0; posicao < Texto.numero_caracteres(nome); posicao++) {
			se(Texto.obter_caracter(nome, posicao) != ' ') {
				cadeia_alvo += Texto.obter_caracter(nome, posicao)
			}
			se(Texto.obter_caracter(nome, posicao) == ' ' ou posicao == Texto.numero_caracteres(nome) -1) {
				se(Texto.numero_caracteres(cadeia_alvo) < 2) erros[4]++
				cadeia_alvo = ""
			}
		}
		se(erros[4] != 0) escreva("> [ALERTA!]: É obrigatorio ter no minimo duas letras no nome e sobrenome!\n")
		// <--

		// Saida! Ok -->
		se(erros[0] != 0 e erros[1] == 0 e erros[2] == 0 e erros[3] == 0 e erros[4] == 0) {
			nome_valido = verdadeiro
			escreva("> [ SAIDA ]: Nome valido.\n")
		}
		senao {
			nome_valido = falso
			escreva("> [ SAIDA ]: Nome invalido.\n")
		}
		// <--

		retorne nome_valido
	}

	funcao logico entrada_data() {
		logico data_valida
		cadeia data
		inteiro erros[3]
		
		escreva ("> [ENTRADA]: Digite sua data de nascimento no formato dd/mm/aaaa: ")
		leia(data)

		// Verificar se esta no formato dd/mm/aaaa! -->
		se(Texto.numero_caracteres(data) == 10 e Tipos.cadeia_e_inteiro(Texto.extrair_subtexto(data, 0, 2), 10) e Tipos.cadeia_e_inteiro(Texto.extrair_subtexto(data, 3, 5), 10) e Tipos.cadeia_e_inteiro(Texto.extrair_subtexto(data, 6, 10), 10)) {
			dia = Tipos.cadeia_para_inteiro(Texto.extrair_subtexto(data, 0, 2), 10)
			mes = Tipos.cadeia_para_inteiro(Texto.extrair_subtexto(data, 3, 5), 10)
			ano = Tipos.cadeia_para_inteiro(Texto.extrair_subtexto(data, 6, 10), 10)

			// Verificar os dias dos mes! -->
			se(dia >= 01 e dia <= 31 e (mes == 01 ou mes == 03 ou mes == 05 ou mes == 07 ou mes == 08 ou mes == 10 ou mes == 12)) erros[1] = 0
			// Verificar o mes 2! -->
			senao se (mes == 2) {
				se(ano%4 == 0 e ano%100 != 0 ou ano%400 == 0) {
					se(dia >= 1 e dia <= 29) erros[1] = 0
					senao {
						erros[1]++
						escreva("> [ALERTA!]: Ano bissexto! o dia do mês 2, não poder ser menor que 1 ou maior que 29!\n")
					}
				} senao {
					se(dia >= 1 e dia <= 28) erros[1] = 0
					senao {
						erros[1]++
						escreva("> [ALERTA!]: O dia do mês 2, não poder ser menor que 1 ou maior que 28!\n")
					}
				}
			}
			// <--
			senao se(dia >= 01 e dia <= 30 e (mes == 04 ou mes == 06 ou mes == 09 ou mes == 11)) erros[1] = 0
			senao {
				erros[1]++
				escreva("> [ALERTA!]: O dia do mês 1, 3, 5, 7, 8, 10 e 12, não poder ser menor que 1 ou maior que 31. Inclusive o dia do mês 4, 6, 9 e 11 não poder ser menor que 1 ou maior que 30!\n")
			}
			// <--
			
		} senao {
			escreva("> [ALERTA!]: A data não esta no formato dd/mm/aaaa!\n")
			erros[0]++
		}
		// <--

		// Verificar se a data informada é maior que a do sistema!
		se(ano < Calendario.ano_atual()) erros[2] = 0
		senao se(ano == Calendario.ano_atual() e dia <= Calendario.dia_mes_atual() e mes <= Calendario.mes_atual()) erros[2] = 0
		senao {
			erros[2]++
			escreva("> [ALERTA!]: A data de nascimento não pode ser maior que a do sistema! amenos, se você for um viajante do tempo!\n")
		}

		se(erros[0] == 0 e erros[1] == 0 e erros[2] == 0) {
			escreva("> [ SAIDA ]: Data valida.\n")
			data_valida = verdadeiro
		}
		senao {
			escreva("> [ SAIDA ]: Data invalida.\n")
			data_valida = falso
		}

		retorne data_valida
	}

	funcao logico entrada_senha() {
		logico senha_valida = falso
		inteiro erros[7]
		escreva("> [ENTRADA]: Digite uma senha: ")
		leia(senha)

		// verficar se tem no minimo 8 digitos! Ok -->
		se(Texto.numero_caracteres(senha) >= 8) erros[0]++
		senao escreva("> [ALERTA!]: A senha deve conter no minimo 8 caracteres!\n")
		// <--

		// verificar se a senha tem acentos! Ok -->
		cadeia acentos = "ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõöøùúûüýþÿ" // Existem muitos acentos :/ falta alguns!
		para(inteiro posicao = 0; posicao < Texto.numero_caracteres(senha); posicao++) {
			para(inteiro posicaoAcento = 0; posicaoAcento < Texto.numero_caracteres(acentos); posicaoAcento++) {
				se(Texto.obter_caracter(senha, posicao) == Texto.obter_caracter(acentos, posicaoAcento)) erros[1]++
			}
		}
		se(erros[1] != 0) escreva("> [ALERTA!]: A senha não pode conter acentos!\n")
		// <--

		// verificar se não contem o mesmo caractere em sequência -->
		para(inteiro posicao = 0; posicao < Texto.numero_caracteres(senha); posicao++) {
			se(posicao < Texto.numero_caracteres(senha) - 1 e Texto.obter_caracter(senha, posicao) == Texto.obter_caracter(senha, posicao + 1)) erros[2]++
		}
		se(erros[2] != 0) escreva("> [ALERTA!]: A senha não deve conter o mesmo caracter em sequência!\n")
		// <--

		// Verificar se tem alguma parte da data dentro da senha -->
		se(Texto.posicao_texto(Tipos.inteiro_para_cadeia(dia, 10), senha, 0) != -1 ou Texto.posicao_texto(Tipos.inteiro_para_cadeia(mes, 10), senha, 0) != -1 ou Texto.posicao_texto(Tipos.inteiro_para_cadeia(ano, 10), senha, 0) != -1) erros[3]++
		se(erros[3] != 0) escreva("> [ALERTA!]: A senha não pode contar a data, mês ou ano, de nascimento, informado anteriormente!\n")
		// <--

		// Verificar se a senha tem espaços -->
		se(Texto.posicao_texto(" ", senha, 0) != -1) erros[4]++
		se(erros[4] != 0) escreva("> [ALERTA!]: A senha não deve conter espaços!\n")
		// <--

		// Verificar se a senha contem partes do nome -->
		para(inteiro posicao = 0; posicao < Texto.numero_caracteres(senha); posicao++) {
			se(posicao + 3 <= Texto.numero_caracteres(nome)) {
				se(Texto.posicao_texto(Texto.caixa_alta(Texto.extrair_subtexto(nome, posicao, posicao + 3)), Texto.caixa_alta(senha), 0) != -1) erros[5]++
			}
		}
		se(erros[5] != 0) escreva("> [ALERTA!]: A senha não deve conter partes do nome informado anteriormente!\n")
		// <--		

		//Verificar as categorias -->
		cadeia alfabeto = "ABCDEFGHIJKLMNOPQRSTUVWXYZ", numeros = "0123456789", alfabetoMinusculo = Texto.caixa_baixa(alfabeto)

		//Verificar se tem numeros
		para(inteiro letra = 0; letra < Texto.numero_caracteres(senha); letra++) {
			para(inteiro num = 0; num < Texto.numero_caracteres(numeros); num++) {
				se(Texto.obter_caracter(senha, letra) == Texto.obter_caracter(numeros, num)) categorias[0]++
			}
		}
		//Verificar se tem maiusculas e minusculas
		para(inteiro letra = 0; letra < Texto.numero_caracteres(senha); letra++) {
			para(inteiro alfa = 0; alfa < Texto.numero_caracteres(alfabeto); alfa++) {
				se(Texto.obter_caracter(senha, letra) == Texto.obter_caracter(alfabeto, alfa)) categorias[1]++
				se(Texto.obter_caracter(senha, letra) == Texto.obter_caracter(alfabetoMinusculo, alfa)) categorias[2]++
			}
		}
		//VErificar se tem simbulos
		se(categorias[0] + categorias[1] + categorias[2] < Texto.numero_caracteres(senha)) categorias[3] = Texto.numero_caracteres(senha) - (categorias[0] + categorias[1] + categorias[2])
		
		para(inteiro i = 0; i < 4; i++) {
			se(categorias[i] != 0) senhaCategorias++
		}
		se(senhaCategorias < 3) {
			escreva("> [ALERTA!]: A senha deve ter no minimo 3 das 4 categorias: Caracteres Maiúsculos (A-Z), Caracteres Minúsculos (a-z), Números (0-9), Símbolos\n")
			erros[6]++
		}
		// <--
		
		se(erros[0] != 0 e erros[1] == 0 e erros[2] == 0 e erros[3] == 0 e erros[4] == 0 e erros[5] == 0 e erros[6] == 0) {
			senha_valida = verdadeiro
			escreva("> [ SAIDA ]: Senha valida.\n")
		}
		senao {
			senha_valida = falso
			escreva("> [ SAIDA ]: Senha invalida.\n")
		}
		
		retorne senha_valida
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 434; 
 * @DOBRAMENTO-CODIGO = [28, 92];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {senhaCategorias, 15, 36, 15}-{erros, 161, 10, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
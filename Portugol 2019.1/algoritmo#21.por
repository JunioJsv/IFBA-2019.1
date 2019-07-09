programa
{
	
	funcao inicio() {
		cadeia nomes[1024]
		inteiro idades[1024], opcao = -1, nCadastros = 0

		enquanto(opcao != 0) {
			escreva(
				"1. Cadastra pessoa.\n" +
				"2. Ver cadastros.\n" +
				"3. Exibir a media das idades.\n" +
				"0. Sair\n" +
				"Opção: ")
			leia(opcao)
			se(opcao == 1) {
				escreva("Qual é o nome da pessoa? ")
				leia(nomes[nCadastros])
				escreva("Qual é a idade dela? ")
				leia(idades[nCadastros])
				nCadastros++
			} senao se(opcao == 2) {
				para(inteiro i = 0; i < nCadastros; i++) {
					escreva(i + 1, "º Nome: ", nomes[i], ". Idade: ", idades[i], "\n")
				}
			} senao se(opcao == 3) {
				 inteiro soma = 0
				 para(inteiro i = 0; i < nCadastros; i++) {
				 	soma += idades[i]
				 }
				 se(soma > 0) escreva("A média é: ", soma/nCadastros, "\n")
				 senao escreva("[ERRO] Ninguem foi cadastrado!\n")
			} senao {
				se(opcao != 0) escreva("[ERRO] Opção invalida!\n")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 99; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {nomes, 5, 9, 5}-{nCadastros, 6, 36, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
programa {
	
/* Faca um programa que leia o salario
* e a quantidade de filhos do funcionario.
* Para cada filho ele tem um acrescimo de 10%
* sobre o salario.
*
* Por fim mostre o salario do funcionario.
*/
	funcao inicio(){
		inteiro qtd
		real salario
		
		escreva("Digite o salario: ")
		leia(salario)
		escreva("Digite a quantidade de filhos: ")
		leia(qtd)
	
		se(qtd>=1) {
			real salarioFinal = salario
			para(inteiro taxa = 1; taxa <= qtd; taxa++) {
				salarioFinal += 0.10 * salario
			}
			escreva("Seu salario atualmente é R$", salarioFinal)
		} senao {
			escreva("Seu salario atualmente é R$", salario)
		}
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 210; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {taxa, 21, 16, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
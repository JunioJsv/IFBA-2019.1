/*
O funcionario trabalha numa empresa que concede,
a partir da solicitacao do funcionario, auxilio
transporte e auxilio creche. Quando concedido
o auxilio ha um desconto no salario mensal do
funcionario.As regras de descontos sao as seguintes:

-auxilio transporte: 6% do salario mensal

-auxilio creche: 120 para o primeiro filho e 100
para os demais.

Faca um programa que leia o salario mensal do
funcionario, quanto o funcionario gasta de transporte
por mes, quantos filhos ele tem, quanto ele gasta de
creche por mes e mostre na tela se ele deve ou nao
solicitar o auxilio transporte bem como se ele deve ou
nao solicitar o auxilio creche.

Se ele solicitar a empresa pagarah a ele os valores
integrais que ele gasta, porem. fara os descontos
presvistos.

Mostre tambem, o salario final do funcionario o valor
total descontado e o valor total recebido de auxilios.
*/

programa
{
	
	funcao inicio()
	{
		real sMensal = 0.0, gTransporte = 0.0, qFilhos = 0.0, gCreche = 0.0, vDescontado = 0.0, vAuxilios = 0.0
		caracter aTransporte = 'n', aCreche = 'n'
		
		escreva("Qual é o seu salario mensal? ")
		leia(sMensal)
		escreva("Quanto você gasta com transporte por mês? ")
		leia(gTransporte)
		escreva("Quantos filhos você tem? ")
		leia(qFilhos)
		escreva("Quanto você gasta com creche mês? ")
		leia(gCreche)

		escreva("Você quer receber o auxilio transporte s/n ? ")
		leia(aTransporte)
		escreva("Você quer receber o auxilio creche s/n ? ")
		leia(aCreche)

		se(aTransporte != 'n') {
			vDescontado += sMensal * 0.06
			vAuxilios += gTransporte
		}
		
		se(aCreche != 'n') {
			se(qFilhos > 0) {
				vDescontado += 120 + (qFilhos - 1) * 100
				vAuxilios += gCreche
			}
		}
		escreva("----------------------------------------------")
		escreva("\nSalario: R$", sMensal - vDescontado, "\nValor descontado: R$", vDescontado, "\nValor recebido de auxilios: R$", vAuxilios)
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1685; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
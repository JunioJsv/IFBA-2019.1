/*
 * Jeovane Santos 31/03/2019
 * Algoritmo relogio
 */

programa {
	
	inclua biblioteca Util

	funcao inicio() {
		
		//Digite o horario atual dentro da função horario(H, M, S)
		inteiro tempo = horario(00,00,00)
		enquanto(verdadeiro) {
			tempo++
			escreva("Horário: ", (tempo / 3600) % 24, ":", (tempo / 60) % 60, ":", tempo % 60)
			escreva("\nDebug: ", tempo, "s")
			Util.aguarde(1000)
			limpa()
		}
	}

	funcao inteiro horario(inteiro hora, inteiro minuto, inteiro segundo) {
		retorne hora * 3600 + minuto * 60 + segundo
	}
}

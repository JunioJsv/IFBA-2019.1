/**
 * Jeovane Santos 28/03/2019
 */

programa
{
	inclua biblioteca Teclado --> T
	inclua biblioteca Graficos --> G
	inclua biblioteca Util --> U
	
	funcao inicio()
	{	
		const inteiro W = 720, H = 480
		inteiro x = 0, y = 0, tamanho = (W + H) / 16, tempo_decorrido, tempo_alvo = 0, frames = 0, fps = 0
		
		G.iniciar_modo_grafico(verdadeiro)
		G.definir_dimensoes_janela(W, H)
		G.definir_titulo_janela("Jeovane Santos")
		
		enquanto(nao T.tecla_pressionada(T.TECLA_ESC)) {

			//Contar Fps {
			tempo_decorrido = U.tempo_decorrido()
			
			se(tempo_alvo == 0) {
				tempo_alvo = tempo_decorrido + 1000
			}
			
			se(tempo_alvo - tempo_decorrido <= 0) {
				fps = frames
				frames = 0
				tempo_alvo = 0
			} senao {
				frames++
			}
			//Contar Fps }

			//Desenhar {
			definirCor(G.COR_BRANCO, falso)
			G.desenhar_retangulo(0, 0, W, H, falso, verdadeiro)
			
			se(x < W) {
				x += tamanho + 5
			} senao se(y < H) {
				x = 0
				y += tamanho + 5
			} senao {
				x = 0
				y = 0
			}

			definirCor(G.COR_PRETO, falso)
			G.desenhar_texto(10, 10, "FPS: " + fps)
			G.desenhar_retangulo(x, y, tamanho, tamanho, verdadeiro, verdadeiro)
			Util.aguarde(1000 / 30)
			G.renderizar()
			//Desenhar }

		}
	}

	funcao definirCor(inteiro cor, logico limpar) {
		G.definir_cor(cor)
		se(limpar) {
			G.limpar()
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 809; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {frames, 14, 81, 6}-{fps, 14, 93, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
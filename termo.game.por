programa // TERMO
{
	inclua biblioteca Texto --> t
	inclua biblioteca Util --> u
	cadeia palavra
	inteiro num_caractere
	cadeia palavras_sorteadas[10] = {"DEBUG", "TERMO", "MOUSE", "ENTER", "TEXTO", "SENAO", "BLOCO", "SAIDA", "LACOS", "CHAVE"}
	cadeia palavra_sorteada
	cadeia pc1, pc2, pc3, pc4, pc5, pt1, pt2, pt3, pt4, pt5
	inteiro pontos 
	funcao inicio()
	{
		palavra_sorteada = palavras_sorteadas[u.sorteia(1, 10) - 1] // sortea a palavra
			
		pc1 = t.extrair_subtexto(palavra_sorteada, 0, 1)
		pc2 = t.extrair_subtexto(palavra_sorteada, 1, 2)
		pc3 = t.extrair_subtexto(palavra_sorteada, 2, 3)
		pc4 = t.extrair_subtexto(palavra_sorteada, 3, 4)
		pc5 = t.extrair_subtexto(palavra_sorteada, 4, 5)

		
		para(inteiro i = 1; i < 7; i++){
		escreva("Digite uma palavra com cinco letras: ")
		leia(palavra)
		palavra = t.caixa_alta(palavra)
		num_caractere = t.numero_caracteres(palavra) // conta quantos caracteres tem no chute
			se (num_caractere == 5){
				pt1 = t.extrair_subtexto(palavra, 0, 1)
				pt2 = t.extrair_subtexto(palavra, 1, 2)
				pt3 = t.extrair_subtexto(palavra, 2, 3)
				pt4 = t.extrair_subtexto(palavra, 3, 4)
				pt5 = t.extrair_subtexto(palavra, 4, 5)
				pontos = 0
			escreva(" - ")
				se ( pc1 == pt1 ){
					escreva(pt1)
					pontos += 1
				}senao{
					escreva("?")
				}
			escreva(" - ")
				se ( pc2 == pt2 ){
					escreva(pt2)
					pontos += 1
				}senao{
					escreva("?")
				}
			escreva(" - ")
				se ( pc3 == pt3 ){
					escreva(pt3)
					pontos += 1
				}senao{
					escreva("?")
				}
			escreva(" - ")
				se ( pc4 == pt4 ){
					escreva(pt4)
					pontos += 1
				}senao{
					escreva("?")
				}
			escreva(" - ")
				se ( pc5 == pt5 ){
					escreva(pt5)
					pontos += 1
				}senao{
					escreva("?")
				}
			escreva(" - \n")

			se(pontos == 5){
				escreva("\nVOCÊ GANHOU!!!\nA PALAVRA SORTEADA ERA '", palavra_sorteada,"'")
				escreva("\nNÚMERO DE TENTATIVAS ", i )
				pare
			}
			
			}
			senao se(num_caractere > 5 ou num_caractere < 5){
				escreva("A sua palavra deve conter apenas 5 letras;\n")
				i--
			}
		}
	}

}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1306; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {palavra, 5, 8, 7}-{palavra_sorteada, 8, 8, 16}-{pc1, 9, 8, 3}-{pc2, 9, 13, 3}-{pc3, 9, 18, 3}-{pc4, 9, 23, 3}-{pc5, 9, 28, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
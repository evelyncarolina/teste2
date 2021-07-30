programa
{
	inclua biblioteca Util
	/*Crie um programa que receba valores do usuário para preencher 
	uma matriz 3X3, e em seguida, exiba a soma dos valores dela e a 
	soma dos valores da primeira diagonal, ou seja, diagonal principal.*/
	funcao inicio()
	{
		inteiro matriz[3][3], x, y, somadia=0, somatotal=0

		para(x=0;x<3;x++)
		{
			para(y=0;y<3;y++)
			{
				//escreva("\nEscreva um número inteiro: ")
				//leia(matriz[x][y])
				matriz[x][y] = Util.sorteia(1, 30)
				
				somatotal = somatotal + matriz[x][y]

				// == É uma comparção dos valores contidos nas variaveis
				// = É atribui o que está da DIREIRA para ESQUERDA
				se(x == y) //Toda vez que a linha for igual a coluna, atribui um valor na diagonal
				{
					//ERRO "Não Inicializada" é pq ela não possui valor
					somadia = somadia + matriz[x][y]
				}
				
			}
		}

		escreva("\nSoma total: ", somatotal)
		escreva("\nSoma da diagonal: ", somadia)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 472; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 9, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
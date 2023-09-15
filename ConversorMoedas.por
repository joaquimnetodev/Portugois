programa {
  funcao inicio() {
    escreva("::: CONVERSOR DE MOEDAS :::\n")
    escreva("\nQual a cotação atual do DÓLAR? (utilize . no lugar da ,)\n")
    real cotacaoDolar
    leia(cotacaoDolar)

    escreva("\nQual a cotação atual do EURO? (utilize . no lugar da ,)\n")
    real cotacaoEuro
    leia(cotacaoEuro)

    escreva("\nQual a cotação atual da LIBRA? (utilize . no lugar da ,)\n")
    real cotacaoLibra
    leia(cotacaoLibra)

    escreva("Qual o valor que deseja converter? (utilize . no lugar da ,)\n")
    real valor
    leia(valor)

    escreva("Para qual moeda você deseja fazer a conversão? \n")   
    escreva("1-DÓLAR  |  2-EURO  |  3-LIBRA\n")
    inteiro moeda
    leia(moeda)

    converter(valor, moeda, cotacaoDolar, cotacaoLibra, cotacaoEuro)
  }

  funcao converter(real valor, inteiro moeda, real cotacaoDolar, real cotacaoLibra, real cotacaoEuro){
    real convertido
    escolha(moeda) {
      caso 1:
      convertido = valor * cotacaoDolar
      escreva("\nO valor de R$ ", valor, " corresponde a $ ", convertido)
      pare
      caso 2:
      convertido = valor * cotacaoEuro
      escreva("\nO valor de R$ ", valor, " corresponde a ", convertido, "EUROS")
      pare
      caso 3:
      convertido = valor * cotacaoLibra
      escreva("\nO valor de R$ ", valor, " corresponde a ", convertido, "LIBRAS")
      pare
      caso contrario:
      escreva("Escolha uma opção válida. Vamos tentar novamente!") 
      converter(valor, moeda)
    }    
  }
}

programa {
  funcao inicio() {
    escreva("::: CONVERSOR DE MOEDAS :::\n")
    escreva("\nQual a cota��o atual do D�LAR? (utilize . no lugar da ,)\n")
    real cotacaoDolar
    leia(cotacaoDolar)

    escreva("\nQual a cota��o atual do EURO? (utilize . no lugar da ,)\n")
    real cotacaoEuro
    leia(cotacaoEuro)

    escreva("\nQual a cota��o atual da LIBRA? (utilize . no lugar da ,)\n")
    real cotacaoLibra
    leia(cotacaoLibra)

    escreva("Qual o valor que deseja converter? (utilize . no lugar da ,)\n")
    real valor
    leia(valor)

    escreva("Para qual moeda voc� deseja fazer a convers�o? \n")   
    escreva("1-D�LAR  |  2-EURO  |  3-LIBRA\n")
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
      escreva("Escolha uma op��o v�lida. Vamos tentar novamente!") 
      converter(valor, moeda)
    }    
  }
}

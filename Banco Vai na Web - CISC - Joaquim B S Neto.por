//DESENVOLVIDO POR JOAQUIM BATISTA DA SILVA NETO
//ALGORITMO DESENVOLVIDO PARA ARQUITETURA CISC

//PARA A ARQUITETURA CISC ESCOLHI QUE CADA AÇÃO EXIGIRIA UMA SUBROTINA

programa {
  inclua biblioteca Util
  funcao inicio() {
    real saldo

    escreva("\n..:: BANCO VAI NA WEB ::..\n")
    escreva("Seja bem-vindo a sua conta Vai Na Web\n")

    escreva("\nQual o seu saldo atual?\n")
    leia(saldo)

    menu(saldo)
  }

  funcao menu(real saldo) {
    inteiro espera = 3000
    inteiro opcao

    escreva("\nO que deseja fazer?\n")

    escreva("1. Depósito\n")
    escreva("2. Saque\n")
    escreva("3. Consulta\n")
    escreva("4. Sair\n")
    leia(opcao)

    escolha(opcao) {
      caso 1:
        depositar(saldo, espera)
      pare

      caso 2:
        sacar(saldo, espera)
      pare

      caso 3:
        consultar(saldo, espera)
      pare

      caso 4:
        escreva("\nObrigado por utilizar o Banco Vai na Web!\n")
        escreva("\nCONTINUE INVESTINDO CONOSCO!\n")
      pare

      caso contrario:
        escreva("Opção inválida. Vamos tentar novamente!")
        Util.aguarde(3000)
        menu(saldo)
    }

    funcao depositar(real saldo, inteiro espera) {
        escreva("\nQual o valor a ser depositado?\n")
        real deposito
        leia(deposito)
        saldo = saldo + deposito
        escreva("\nDepósito de R$ ", deposito, " realizado com sucesso!\n")
        escreva("SEU SALDO ATUAL É DE R$ ", saldo,"\n")
        Util.aguarde(espera)
        limpa()
        menu(saldo)
    }

    funcao sacar(real saldo, inteiro espera) {
        escreva("\nQual o valor que deseja sacar?\n")
        real saque
        leia(saque)
        se (saque > saldo) {
          escreva ("SALDO INSUFICIENTE PARA SAQUE!\n")
          escreva("\nObrigado por utilizar o Banco Vai Na Web\n")
          Util.aguarde(espera)
          limpa()
          menu(saldo)
        } senao {
          saldo = saldo - saque
          escreva("Saque realizado com sucesso!\n")
          escreva("SEU SALDO ATUAL É DE R$ ", saldo)
          escreva("\n\nObrigado por utilizar o Banco Vai Na Web\n")
          escreva("")
          Util.aguarde(espera)
          limpa()
          menu(saldo)
        }
    }

    funcao consultar(real saldo, inteiro espera) {
      escreva("\nO seu saldo atual é de R$ ", saldo)
      escreva("\nContinue investindo conosco!\n")
      escreva("\nObrigado por utilizar o Banco Vai Na Web!\n")
      Util.aguarde(espera)
      limpa()
      menu(saldo)
    }
  }
}

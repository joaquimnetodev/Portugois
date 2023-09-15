programa {

  cadeia usuario, senha
  inteiro tentativas = 3

  funcao inicio() {
    escreva("::: BEM-VINDO AO SISTEMA DE LOGIN VAI NA WEB :::\n")

    escreva("\nVamos criar um usuário para você!\n")
    escreva("Digite um nome de usuário:\n")
    leia(usuario)
    escreva("Digite uma senha: \n")
    leia(senha)
    
    escreva("\nUsuário e senha cadastrados com sucesso! Vamos fazer o login.\n")

    loginUsuario()    
  }

  funcao loginUsuario(){
    escreva("\nVocê tem ", tentativas, " tentativas de login!\n")

    se (tentativas == 0 ) {
      escreva("Você excedeu o limite de tentativas de login. Entre em contato com o administrador.")
    } senao {
      escreva("\nDigite o usuário cadastrado: \n")
      cadeia loginUsuario
      leia(loginUsuario)
      escreva("Digite a senha cadastrada: \n")
      cadeia loginSenha
      leia(loginSenha)
      se (loginUsuario == usuario e loginSenha == senha) {
        escreva("LOGIN EFETUADO COM SUCESSO!")
      } senao {
        escreva("Usuário ou senha incorretos! Vamos tentar novamente.\n")
        tentativas = tentativas--
        loginUsuario()
      }
    }
  }  
}
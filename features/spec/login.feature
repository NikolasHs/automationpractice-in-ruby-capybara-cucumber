# language: pt

Funcionalidade: Login no Ecommerce Fake
  Como um usuario do site FakeEcommerce que ja realizou o seu cadastro
  Gostaria de me autenticar no site com email e senha
  para realizar compras

  Contexto:
    Dado que o usuario esteja na pagina de login

  @validar_login_com_sucesso
  Cenário: Validar login com sucesso
    Quando o usuario digitar o email "teste123@teste.com.br" e a senha "!@12345@!"
    Então ele deve ser autenticar com sucesso 

  @validar_login_com_falha
  Esquema do Cenário: Validar Login com falha
    Quando o usuario digitar <email> ou <senha> inválidos
    Então deve ser exibido a <mensagem>

  Exemplos:
    | email                      | senha             | mensagem                        |
    | "testando777@teste.com"    | "senha incorreta" | "Authentication failed."     |
    | "usuário incorreto"        | "teste12345"      | "Invalid email address."     |
    | ""                         | "12345teste"      | "An email address required." |
    | "outroemail@teste.com"     | ""                | "Password is required."      |
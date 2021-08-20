# language: pt

@regressivo
Funcionalidade: Login no Ecommerce Fake
  Sendo um usuário cadastrado
  Quero acessar o sistema da Ecommerce Fake
  Para que eu possa fazer minhas compras

  @login
  Cenário: Realizar login
    Dado que esteja na página de login
    Quando submeter as credenciais com "danilo.tester@gmail.com" e "123456"
    Então deverá ser redirecionado para a MY ACCOUNT

  @tentativa_login
  Esquema do Cenario: Login com falha

    Dado que esteja na página de login
    Quando submeter as credenciais com "<email_input>" e "<senha_input>"
    Então deverá apresentar a "<mensagem_output>"

    Exemplos:
      | email_input             | senha_input | mensagem_output            |
      | danilo.tester@yahoo.com | 123456      | Authentication failed.     |
      | danilo.tester@gmail.com | 1234567     | Authentication failed.     |
      | danilo.tester#gmail.com | 123456      | Invalid email address.     |
      |                         | 123456      | An email address required. |
      | danilo.tester@gmail.com |             | Password is required.      |
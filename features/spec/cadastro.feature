#language: pt

@regressivo
Funcionalidade: Registrar no Ecommerce Fake
  Sendo um usuário sem cadastro
  Quero fazer o cadastro no sistema da Ecommerce Fake
  Para que eu possa fazer minhas compras

  @cadastro_com_sucesso
  Cenário: Realizar cadastro
    Dado que esteja na página de autenticação
    Quando colocar um email válido e não cadastrado no sistema
      E submeter o cadastro com as informações pessoais:
      | first_name | last_name | password | address             | city     | state      | postal_code | mobile_phone |
      | Danilo     | Brito     | pwd123   | Av. Armando Tavares | Salvador | California | 12345       | 71999999999  |
    Então deverá ser redirecionado para a MY ACCOUNT

  @cadastro_sem_sucesso
  Esquema do Cenario: Tentativa de cadastro

    Dado que esteja na página de autenticação
    Quando colocar um email válido e não cadastrado no sistema
      E submeter o cadastro com as informações pessoais:
      | first_name   | last_name   | password   | address   | city   | state   | postal_code   | mobile_phone   |
      | <first_name> | <last_name> | <password> | <address> | <city> | <state> | <postal_code> | <mobile_phone> |
    Então deverá apresentar a mensagem de alerta: "<mensagem_output>"

    Exemplos:
      | first_name | last_name | password | address             | city     | state      | postal_code | mobile_phone | mensagem_output                                                                  |
      |            | Brito     | pwd123   | Av. Armando Tavares | Salvador | California | 12345       | 71999999999  | firstname is required.                                                           |
      | Danilo     |           | pwd123   | Av. Armando Tavares | Salvador | California | 12345       | 71999999999  | lastname is required.                                                            |
      | Danilo     | Brito     |          | Av. Armando Tavares | Salvador | California | 12345       | 71999999999  | passwd is required.                                                              |
      | Danilo     | Brito     | pwd123   |                     | Salvador | California | 12345       | 71999999999  | address1 is required.                                                            |
      | Danilo     | Brito     | pwd123   | Av. Armando Tavares |          | California | 12345       | 71999999999  | city is required.                                                                |
      | Danilo     | Brito     | pwd123   | Av. Armando Tavares | Salvador | -          | 12345       | 71999999999  | This country requires you to choose a State.                                     |
      | Danilo     | Brito     | pwd123   | Av. Armando Tavares | Salvador | California |             | 71999999999  | The Zip/Postal code you've entered is invalid. It must follow this format: 00000 |
      | Danilo     | Brito     | pwd123   | Av. Armando Tavares | Salvador | California | 12345       |              | You must register at least one phone number.                                     |


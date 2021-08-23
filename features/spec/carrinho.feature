# language: pt

@regressivo
Funcionalidade: Carrinho de Compras 
    Como um cliente do site FakeEcommerce
    Gostaria de selecionar um vestido de verão
    Para colocar no carrinho de compras

    @carrinho
    Cenário: Carrinho
        Dado que esteja na página de autenticação
        Quando selecionar o vestido de verão pelo Bloco de Menu 
        E clicar em adicionar ao carrinho
        Então devem ser exibida a mensagem "Product successfully added to your shopping cart"
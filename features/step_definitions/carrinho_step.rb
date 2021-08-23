Quando("selecionar o vestido de verão pelo Bloco de Menu") do
  @carrinho_page.header.title_woman.hover
  @carrinho_page.header.title_summer_dresses.click
end

Quando("clicar em adicionar ao carrinho") do
  @carrinho_page.hover_container
  @carrinho_page.product.btn_add_to_cart.click
end

Então("devem ser exibida a mensagem {string}") do |string|
  expect(@carrinho_page).to have_content "Product successfully added to your shopping cart"
end

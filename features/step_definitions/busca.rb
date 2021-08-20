Dado("que esteja na página inicial") do
  @home_page.load
end

Quando("buscar pelo produto {string}") do |query|
  @home_page.search(query)
end

Então("devem ser retornados produtos") do
  expect(@search_page.products.first).to have_image
  expect(@search_page.products.first).to have_name
  expect(@search_page.products.first.name.text).to have_content "shirt"
end
Quando("não preencher o campo de busca") do
  @home_page.empty_search
end

Então("devem ser retornado a mensagem {string}") do |message|
  expect(page).to have_content message
end

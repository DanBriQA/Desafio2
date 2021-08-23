Quando("colocar um email válido e não cadastrado no sistema") do
  @cadastro_page.create_an_account.create_account
  @cadastro_page.wait_until_creation_form_visible
end
Quando("submeter o cadastro com as informações pessoais:") do |table|
  user = table.hashes.first
  @cadastro_page.form.create_form(user)
end

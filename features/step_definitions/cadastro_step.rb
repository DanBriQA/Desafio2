Quando("colocar um email válido e não cadastrado no sistema") do
  @cadastro_page.create_account
  @cadastro_page.wait_until_create_form_visible
end
Quando("submeter o cadastro com as informações pessoais:") do |table|
  user = table.hashes.first
  @cadastro_page.create.check_mr.click
  @cadastro_page.create.first_name.set user[:first_name]
  @cadastro_page.create.last_name.set user[:last_name]
  @cadastro_page.create.password.set user[:password]
  @cadastro_page.create.day_birth.select "25"
  @cadastro_page.create.months_birth.select "February"
  @cadastro_page.create.years_birth.select "1994"
  @cadastro_page.create.company.set "Compasso UOL"
  @cadastro_page.create.address1.set user[:address]
  @cadastro_page.create.address2.set Faker::Address.secondary_address
  @cadastro_page.create.city.set user[:city]
  @cadastro_page.create.state.select user[:state]
  @cadastro_page.create.postal_code.set user[:postal_code]
  @cadastro_page.create.mobile_phone.set user[:mobile_phone]
  @cadastro_page.create.btn_register.click
end

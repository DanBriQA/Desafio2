Quando("colocar um email válido e não cadastrado no sistema") do
  @cadastro_page.create_an_account.create_account
  @cadastro_page.wait_until_creation_form_visible
end

Quando("submeter o cadastro com as informações pessoais:") do |table|
  user = table.hashes.first
  @cadastro_page.form.create_form(user)
end

# user_one = [
#     {
#       title: "without firstname",
#       payload: { "first_name": "", "last_name": "Brito", "password": "pwd123", "address": "Av. Armando Tavares", "city": "Salvador", "state": "California", "postal_code": "12345", "mobile_phone": "71999999999" },
#       error: "firstname is required.",
#     },
#     {
#       title: "without lastname",
#       payload: { "first_name": "Danilo", "last_name": "", "password": "pwd123", "address": "Av. Armando Tavares", "city": "Salvador", "state": "California", "postal_code": "12345", "mobile_phone": "71999999999" },
#       error: "lastname is required.",
#     },
#     {
#       title: "without password",
#       payload: { "first_name": "Danilo", "last_name": "Brito", "password": "", "address": "Av. Armando Tavares", "city": "Salvador", "state": "California", "postal_code": "12345", "mobile_phone": "71999999999" },
#       error: "passwd is required.",
#     },
#     {
#       title: "without address",
#       payload: { "first_name": "Danilo", "last_name": "Brito", "password": "pwd123", "address": "", "city": "Salvador", "state": "California", "postal_code": "12345", "mobile_phone": "71999999999" },
#       error: "address1 is required.",
#     },
#     {
#       title: "without city",
#       payload: { "first_name": "Danilo", "last_name": "Brito", "password": "pwd123", "address": "Av. Armando Tavares", "city": "", "state": "California", "postal_code": "12345", "mobile_phone": "71999999999" },
#       error: "city is required.",
#     },
#     {
#       title: "without state",
#       payload: { "first_name": "Danilo", "last_name": "Brito", "password": "pwd123", "address": "Av. Armando Tavares", "city": "", "state": "-", "postal_code": "12345", "mobile_phone": "71999999999" },
#       error: " This country requires you to choose a State.",
#     },
#     {
#       title: "without postal code",
#       payload: { "first_name": "Danilo", "last_name": "Brito", "password": "pwd123", "address": "Av. Armando Tavares", "city": "Salvador", "state": "California", "postal_code": "", "mobile_phone": "71999999999" },
#       error: "The Zip/Postal code you've entered is invalid. It must follow this format: 00000",
#     },
#     {
#       title: "without mobile phone",
#       payload: { "first_name": "Danilo", "last_name": "Brito", "password": "pwd123", "address": "Av. Armando Tavares", "city": "Salvador", "state": "California", "postal_code": "12345", "mobile_phone": "" },
#       error: "You must register at least one phone number.",
#     },

#   ]

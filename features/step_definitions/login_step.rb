Dado("que esteja na página de autenticação") do
  @login_page.load
end

Quando("submeter as credenciais com {string} e {string}") do |email, password|
  @login_page.login_with(email, password)
end

Então("deverá ser redirecionado para a MY ACCOUNT") do
  expect(@login_page).to have_css "#my-account"
end

Então("deverá apresentar a mensagem de alerta: {string}") do |expect_message|
  @login_page.wait_until_alert_message_authentication_failed_visible
  expect(@login_page.alert).to have_text expect_message
end

Before do
  @home_page = Pages::HomePage.new
  @search_page = Pages::SearchPage.new
  @login_page = Pages::LoginPage.new
  @carrinho_page = Pages::CarrinhoPage.new
  @cadastro_page = Pages::CadastroPage.new

  page.driver.browser.manage.window.maximize
end

AfterStep do
  screenshot = "reports/screenshot#{Time.now.to_i.to_s}.png"
  page.save_screenshot(screenshot)
  embed(screenshot, "image/png", "the_screenshot")
end

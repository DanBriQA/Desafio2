require_relative "sections/create.rb"

module Pages
  class CadastroPage < SitePrism::Page
    set_url "/index.php?controller=authentication&back=my-account"

    element :creation_form, "#account-creation_form"

    section :form, Sections::Create, "#account-creation_form"
    section :create_an_account, Sections::Create, "#create-account_form"

    def alert
      alert_message_authentication_failed.text
    end
  end
end

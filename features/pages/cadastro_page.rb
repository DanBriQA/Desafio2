require_relative "sections/create.rb"

module Pages
  class CadastroPage < SitePrism::Page
    set_url "/index.php?controller=authentication&back=my-account"

    section :create, Sections::Create, "#account-creation_form"

    element :email_adress, "#email_create"
    element :btn_create_account, "#SubmitCreate"
    element :create_form, "#account-creation_form"

    def create_account
      email_adress.set Faker::Internet.free_email
      btn_create_account.click
    end

    def alert
      alert_message_authentication_failed.text
    end
  end
end

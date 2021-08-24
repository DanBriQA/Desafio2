module Sections
  class Create < SitePrism::Section
    #Formulario de cadastro
    element :check_mr, "#id_gender1"
    element :check_mrs, "#id_gender2"
    element :first_name, "#customer_firstname"
    element :last_name, "#customer_lastname"
    element :password, "#passwd"
    element :day_birth, "#uniform-days"
    element :months_birth, "#uniform-months"
    element :years_birth, "#uniform-years"
    element :company, "#company"
    element :address1, "#address1"
    element :address2, "#address2"
    element :city, "#city"
    element :state, "#uniform-id_state"
    element :postal_code, "#postcode"
    element :country, "#id_country"
    element :mobile_phone, "#phone_mobile"

    #Email para cadastro
    element :email_adress, "#email_create"
    element :btn_register, "#submitAccount"
    element :btn_create_account, "#SubmitCreate"

    def create_account
      email_adress.set Faker::Internet.free_email
      btn_create_account.click
    end

    def create_form(user)
      check_mr.click
      first_name.set user[:first_name]
      last_name.set user[:last_name]
      password.set user[:password]
      day_birth.select "25"
      months_birth.select "February"
      years_birth.select "1994"
      company.set "Compasso UOL"
      address1.set user[:address]
      address2.set "Home"
      city.set user[:city]
      state.select user[:state]
      postal_code.set user[:postal_code]
      mobile_phone.set user[:mobile_phone]
      btn_register.click
    end
  end
end

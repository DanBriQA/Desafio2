module Sections
  class Create < SitePrism::Section
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
    element :btn_register, "#submitAccount"
  end
end

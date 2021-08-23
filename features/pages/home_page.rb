module Pages
  class HomePage < SitePrism::Page
    set_url "/index.php"
    element :input_newsletter_footer_email, ""
    element :btn_newsletter_footer_register, ""
  end
end

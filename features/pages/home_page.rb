module Pages
  class HomePage < SitePrism::Page
    set_url "/index.php"

    element :logo, ".logo"
    element :btn_contact_us, "a[title='Contact Us']"
    element :btn_go_to_sign_in, ".login"
    element :input_search_form, "#search_query_top"
    element :button_search, ".button-search"
    element :input_newsletter_footer_email, ""
    element :btn_newsletter_footer_register, ""

    def search(query)
      input_search_form.set(query)
      button_search.click
    end

    def empty_search
      input_search_form.set ""
      button_search.click
    end
  end
end

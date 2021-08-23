module Sections
  class Header < SitePrism::Section
    element :title_woman, "a[title=Women]"
    element :title_tops, "a[title=Tops]"
    element :title_tshirt, "a[title='T-shirts']"
    element :title_blouses, "a[title=Blouses]"
    element :title_dresses, "a[title='Dresses']"
    element :title_casual_dresses, "a[title='Casual Dresses']"
    element :title_evening_dresses, "a[title='Evening Dresses']"
    element :title_summer_dresses, "a[title='Summer Dresses']"
    element :logo, ".logo"
    element :btn_contact_us, "a[title='Contact Us']"
    element :btn_go_to_sign_in, ".login"
    element :input_search_form, "#search_query_top"
    element :button_search, ".button-search"

    def search(query)
      input_search_form.set(query)
      button_search.click
    end
  end
end

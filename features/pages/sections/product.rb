module Sections
  class Product < SitePrism::Section
    element :image, ".img-responsive"
    element :name, ".product-name"
    element :price, ""
    element :color, ""
    element :btn_add_to_cart, ".button-container a[data-id-product='5']"
    element :btn_more, ".lnk_view"
  end
end

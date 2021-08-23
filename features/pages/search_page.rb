require_relative "sections/product.rb"
require_relative "sections/header.rb"

module Pages
  class SearchPage < SitePrism::Page
    set_url "/index.php"

    sections :products, Sections::Product, ".product-container"
    section :search_product, Sections::Header, ".header-container"
  end
end

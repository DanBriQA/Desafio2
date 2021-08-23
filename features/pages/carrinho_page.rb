require_relative "sections/header.rb"
require_relative "sections/product.rb"

module Pages
  class CarrinhoPage < SitePrism::Page
    set_url "/index.php"

    section :header, Sections::Header, "#block_top_menu"
    section :product, Sections::Product, "#center_column"

    def hover_container
      find(".first-in-line").hover
    end
  end
end

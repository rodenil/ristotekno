Deface::Override.new(:virtual_path => "spree/products/show", 
                     :name => "product_page_show_products",
                     :insert_after => "[data-hook='product_show']",
                     :partial => "shared/show_all_products")
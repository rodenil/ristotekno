Deface::Override.new(:virtual_path => "spree/products/show", 
                     :name => "product_page",
                     :insert_before => "[data-hook='product_show']",
                     :partial => "shared/show_category")
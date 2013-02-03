Deface::Override.new(:virtual_path => "spree/products/show", 
                     :name => "product_page_product_details",
                     :replace => "[data-hook='product_show']",
                     :partial => "shared/show_product_details")
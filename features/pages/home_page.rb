module Pages
  class HomePage < SitePrism::Page
    set_url '/index.php'

    element  :logo, '#header_logo'
    element  :btn_contact_us, '#contact-link'
    element  :btn_go_to_sign_in, '.login'
    element  :input_search_form, '#search_query_top'
    element  :button_search, '.button-search'
    element  :input_newsletter_footer_email, '#newsletter-input'
    element  :btn_newsletter_footer_register, 'button[name^="submitNewsletter"]'
    element  :alert_message_no_results, '#center_column > p.alert.alert-warning'
    element  :btn_add_to_cart, '.button.ajax_add_to_cart_button.btn.btn-default'
    element  :btn_proceed_to_checkout, '.btn.btn-default.button.button-medium[title^="Proceed to checkout"]'
    element  :items_on_cart, 'div.shopping_cart a:nth-child(1) > span.ajax_cart_quantity'

    def search(query)
      input_search_form.set(query)
      button_search.click
    end

    def alert_message 
      alert_message_no_results.text
    end

    def add_product_Blouse_to_cart
      btn_add_to_cart.click
      btn_proceed_to_checkout.click
    end

    def quantity_items_on_cart
      items_on_cart.text
    end
  end
end

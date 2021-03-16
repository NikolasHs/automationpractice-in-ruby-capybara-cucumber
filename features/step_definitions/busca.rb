#Contexto
Dado("que esteja na página inicial") do
  @home_page.load
end
Quando("buscar pelo produto {string}") do |query|
  @home_page.search(query)
end

# @buscar_por_termo_valido
Então("deve ser retornado apenas um produto") do
  expect(@search_page.products.first).to have_image
  expect(@search_page.products.first).to have_name
  expect(@search_page.products.first.name.text).to have_content 'Blouse'
end

# @busca_sem_resultados
Então("deve ser exibido a mensagem {string}") do |mensagem|
  expect(@home_page.alert_message).to include mensagem
end

# @adicionar_produto_no_carrinho
  E("clicar no botão add to cart e depois no botão Proceed to checkout") do
    @home_page.add_product_Blouse_to_cart
  end
  Então ("o carrinho deve ficar com {string} produto") do |quantidade|
    expect(@home_page.quantity_items_on_cart).to include quantidade
  end
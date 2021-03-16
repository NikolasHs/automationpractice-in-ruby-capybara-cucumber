# language: pt

Funcionalidade: Buscas no Fake Ecommerce
  Como um cliente do site FakeEcommerce
  Gostaria de poder buscar por produtos
  Para customizar as compras

  Contexto:
    Dado que esteja na página inicial

  @buscar_por_termo_valido
  Cenário: Buscar por termo válido
    Quando buscar pelo produto "Blouse"
    Então deve ser retornado apenas um produto

  @busca_sem_resultados
  Cenário: Busca sem resultados
    Quando buscar pelo produto "Testando"
    Então deve ser exibido a mensagem "No results were found for your search \"Testando\""

  @adicionar_produto_no_carrinho
  Cenário: adiciona o produto "Blouse" no carrinho e finaliza a compra
    Quando buscar pelo produto "Blouse"
    E clicar no botão add to cart e depois no botão Proceed to checkout
    Então o carrinho deve ficar com "1" produto

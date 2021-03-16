
Dado("que o usuario esteja na pagina de login") do
  @login_page.load
end

# @validar_login_com_sucesso
Quando("o usuario digitar o email {string} e a senha {string}") do |usuario, senha|
  @login_page.login(usuario, senha)
end
Então("ele deve ser autenticar com sucesso") do
  expect(@login_page).to have_link_logout
end

# @validar_login_com_falha
Quando ("o usuario digitar {string} ou {string} inválidos") do |email, senha|
  @login_page.login(email, senha)
end
Então ("deve ser exibido a {string}") do |mensagem|
  expect(@login_page.alert_message).to include mensagem   
end
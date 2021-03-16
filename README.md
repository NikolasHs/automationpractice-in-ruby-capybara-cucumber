# Automação do site http://automationpractice.com/

**O que foi feito:**
- Na pagina de login foi verificado um login com sucesso de um usuario existente
- Tambem foi verificado logins com falha validando:
  * usuario e senha incorretos
  * email invalido
  * não preenchimento de email
  * não preenchimento de senha
- Na pagina pricipal foi validado a busca pelo produto "blouse" e a adição deste produto no carrinho
- Ainda na pagina inicial foi validado uma busca que não retorna nenhum produto

**Tecnologias Utilizadas** 
- Ruby 3.0.0
- capybara
- site_prism
- rspec
------------

## Sobre a execução do projeto: 

Para poder executar, você deverá ter:
- Ruby >= 2.5.x;
- Chrome e Chromedriver na última versão estável.

Comandos a serem executados a partir da raíz do projeto:

Instalar as dependências:
```ruby
bundle install
```

Executar o projeto - teste de carregamento básico:
```ruby
bundle exec cucumber
```
- Após executar a automação, sera gerado um relatorio com todos os testes executados na pasta "reports".

------------
## Mapa mental do projeto
![](mapa-mental/mapa_mental.png)
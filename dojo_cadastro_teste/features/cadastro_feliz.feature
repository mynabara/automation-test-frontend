#language: pt

Funcionalidade: Criar cadastro
    Eu, como cliente,
    Quero me cadastrar no site 
    Para efetuar compras e acessar todas as funcionalidades

Cenário: Finalizar cadastro com sucesso
    Dado que esteja na home do site
    Quando enviar os dados do cadastro
    Então o cadastro será criado com sucesso
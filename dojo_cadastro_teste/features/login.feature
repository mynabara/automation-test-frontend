#language: pt

Funcionalidade: Logar na conta
    Eu, como cliente,
    Quero me logar no site 
    Para acessar todas as funcionalidades personalizadas

Cenário: Login em branco
    Dado que esteja na home do site
    Quando enviar os dados de login em branco
    Então aparecerá mensagem de campo em branco

Cenário: Login inválido
    Dado que esteja na home do site
    Quando enviar os dados de login inválidos
    Então aparecerá mensagem de erro

Cenário: Logar com sucesso
    Dado que esteja na home do site
    Quando enviar os dados de login válidos
    Então o login será feito com sucesso
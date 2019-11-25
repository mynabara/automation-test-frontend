Quando("enviar os dados de login em branco") do
  click_link('Sign in')
  click_button('SubmitLogin')
end

Então("aparecerá mensagem de campo em branco") do
  assert_no_text('Welcome to your account. Here you can manage all of your personal information and orders.')
end

Quando("enviar os dados de login inválidos") do
  click_link('Sign in')
  @loginPage = LoginPage.new
  @loginPage.log_in('mymymymymymymymymy@yopmail.com','Ame@12345')
end

Então("aparecerá mensagem de erro") do
  assert_no_text('Welcome to your account. Here you can manage all of your personal information and orders.')
end

Quando("enviar os dados de login válidos") do
    click_link('Sign in')
    @loginPage = LoginPage.new
    @loginPage.log_in('mynateste@yopmail.com','Ame@1234')
  end
  
  Então("o login será feito com sucesso") do
    assert_text('Welcome to your account. Here you can manage all of your personal information and orders.')
  end
Dado("que esteja na home do site") do
    Home.new.load
  end
  
  Quando("enviar os dados do cadastro") do
    click_link('Sign in')
    fill_in('email_create', :with => Faker::Internet.email)
    click_button('SubmitCreate')
    choose('id_gender2')
    fill_in('customer_firstname', :with => 'Myna')
    fill_in('customer_lastname', :with => 'Obara')
    fill_in('passwd', :with => 'Ame@1234')
    select('18', :from => 'days')
    select('March', :from => 'months')
    select('1990', :from => 'years')
    check('newsletter', visible: false)
    check('optin', visible: false)
    fill_in('company', :with => 'Ame')
    fill_in('address1', :with => 'R. Fidêncio Ramos')
    fill_in('address2', :with => '302, 9° andar')
    fill_in('city', :with => 'São Paulo')
    select('New York', :from => 'id_state', visible: false)
    fill_in('postcode', :with => '10001')
    fill_in('other', :with => 'Oi, somos a Ame!')
    fill_in('phone', :with => '1124610180')
    fill_in('phone_mobile', :with => '11960657355')
    click_button('submitAccount')
  end
  
  Então("o cadastro será criado com sucesso") do
    assert_text('Welcome to your account. Here you can manage all of your personal information and orders.')
  end
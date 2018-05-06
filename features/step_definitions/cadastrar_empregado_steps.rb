Dado("que esteja na home da Orangehrm") do
  visit "http://opensource.demo.orangehrmlive.com/"
end

Quando("realizar um cadastro") do
  fill_in "txtUsername", :with => "admin"
  fill_in "txtPassword", :with => "admin"
  click_button('btnLogin')
  find('#menu_pim_viewPimModule').click 
  click_button('btnAdd')
  fill_in "firstName", :with => "Armando"
  fill_in "lastName", :with => "Astrosia"
  click_button('btnSave')
end

Entao("cadastro realizado com sucesso") do
  assert_text('Armando Astrosia')
end
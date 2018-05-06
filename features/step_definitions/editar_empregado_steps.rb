Dado("que esteja na lista de empregados") do
  visit "http://opensource.demo.orangehrmlive.com/"
  fill_in "txtUsername", :with => "admin"
  fill_in "txtPassword", :with => "admin"
  click_button('btnLogin')
  find('#menu_pim_viewPimModule').click
end

Quando("editar um cadastro") do
  fill_in "empsearch_employee_name_empName", :with => "Armando"
  click_button('searchBtn')
  find(:xpath,'//*[@id="resultTable"]/tbody/tr/td[3]/a').click
  click_button('btnSave')
  choose('personal_optGender_1')
  select('Armenian', :from => 'personal_cmbNation')
  select('Single', :from => 'personal_cmbMarital')
  fill_in "personal_txtLicenNo", :with => "RGB874875"
  fill_in "personal_txtLicExpDate", :with => "2019-06-20"
  fill_in "personal_DOB", :with => "1987-05-10"
  click_button('btnSave')
end

Entao("cadastro atualizado com sucesso") do
  assert_text ('Successfully Saved')
end
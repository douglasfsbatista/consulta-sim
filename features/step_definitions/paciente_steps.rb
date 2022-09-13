#primeiro cenario
Given('estou na pagina do paciente') do
  visit '/pacientes/'
  expect(page).to have_current_path('/pacientes/')
end

Given('eu clico em criar novo paciente') do
  click_on 'New paciente'
end

When('eu preencho os dados nome {string} data_nascimento {string} cpf {string} email {string} cep {string} cidade {string} bairro {string} logradouro {string} complemento {string}') do |nome, data_nascimento, cpf, email, cep, cidade, bairro, logradouro, complemento|
  fill_in 'paciente[nome]', :with => nome
  fill_in 'paciente[data_nascimento]', :with => data_nascimento
  fill_in 'paciente[cpf]', :with => cpf
  fill_in 'paciente[email]', :with => email
  fill_in 'paciente[endereco_attributes][logradouro]', :with => logradouro
  fill_in 'paciente[endereco_attributes][cep]', :with => cep
  fill_in 'paciente[endereco_attributes][complemento]', :with => complemento
  fill_in 'paciente[endereco_attributes][bairro]', :with => bairro
  fill_in 'paciente[endereco_attributes][cidade]', :with => cidade
end

When('eu clico no botao de criar paciente') do
  click_button 'Create Paciente'
end

Then('eu vejo a mensagem de que o paciente foi criado com sucesso') do
  expect(page).to have_content('Paciente was successfully created')
end

#segundo cenÃ¡rio
Given('o paciente com cpf {string} existe') do |cpf|
  visit '/pacientes/new'
  fill_in 'paciente[nome]', :with => 'Pedro Silva'
  fill_in 'paciente[data_nascimento]', :with => '1999-09-01'
  fill_in 'paciente[cpf]', :with => cpf
  fill_in 'paciente[email]', :with => 'pedro@hotmail.com'
  fill_in 'paciente[endereco_attributes][logradouro]', :with => 'Rua 22'
  fill_in 'paciente[endereco_attributes][complemento]', :with => 'Ap02'
  fill_in 'paciente[endereco_attributes][cep]', :with => '55515000'
  fill_in 'paciente[endereco_attributes][bairro]', :with => 'Alicis'
  fill_in 'paciente[endereco_attributes][cidade]', :with => 'Amaraji'
  click_on 'Create Paciente'
  expect(page).to have_content(cpf)
  visit '/pacientes/'
  expect(page).to have_current_path(/pacientes/)


end

Given('eu clico em mostrar o paciente com cpf {string}') do |cpf|
  click_on "#{cpf}"

end

Given('eu clico em editar o cadastro do paciente') do
  click_on 'Edit this paciente'
end

When('eu clico no botao de atualizar paciente') do
  click_button 'Update Paciente'
end

Then('eu vejo a mensagem de que o paciente foi atualizado com sucesso') do
  expect(page).to have_content('Paciente was successfully updated')
end
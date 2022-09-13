Feature: Paciente
  As a paciente
  I want to adicionar, remover visualizar e editar meu cadastro
  So that eu nao tenho que fazer isso de forma manual ou presencial

  Scenario: cadastrar paciente
    Given estou na pagina do paciente
    And eu clico em criar novo paciente
    When eu preencho os dados nome 'Nathalia Nietlly', data_nascimento '1994-09-14', cpf '559.653.560-56', email 'nathalia@hotmail.com', logradouro 'Etelvinense', complemento 'Ap05', cep '55515-000', bairro 'Centro', cidade 'Gravata'
    And eu clico no botao de criar paciente
    Then eu vejo a mensagem de que o paciente foi criado com sucesso

  Scenario: editar informacoes do paciente
    Given estou na pagina do paciente
    And o paciente com cpf '559.653.560-56' existe
    And eu clico em mostrar o paciente com cpf '559.653.560-56'
    And eu clico em editar o cadastro do paciente
    When eu preencho os dados nome 'Jacelane da Luz', data_nascimento '1998-08-09', cpf '148.464.850-13', email 'jacelane@hotmail.com', logradouro 'Rua 2', complemento 'Ap01', cep '55292-400', bairro 'Centro', cidade 'Gravata'
    And eu clico no botao de atualizar paciente
    Then eu vejo a mensagem de que o paciente foi atualizado com sucesso
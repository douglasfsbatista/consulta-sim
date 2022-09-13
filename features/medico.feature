Feature: Medico
  As a medico
  I want to adicionar, remover, visualizar e editar meu cadastro
  So that eu nao tenha que fazer isso de forma manual ou presencial


  Scenario: remover medico
    Given estou na pagina de medico
    And o medico com CRM '22334' existe
    When eu clico em remover o medico com CRM '22334'
    Then eu vejo uma mensagem que o medico foi apagado com sucesso

  Scenario: cadastrar medico
    Given estou na pagina de medico
    When eu preencho os campos de nome 'Douglas Batista', cpf '429.924.190-87', email 'dfsb@gmail.com', especialidade 'Cardiologista' e crm '22334'
    And eu clico em cadastrar novo medico
    Then eu vejo uma mensagem que o medico foi cadastrado com sucesso
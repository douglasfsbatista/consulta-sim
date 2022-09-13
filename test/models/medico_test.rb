require "test_helper"

class MedicoTest < ActiveSupport::TestCase
  test 'Criando medico corretamente' do
    medico = Medico.new nome: 'Rodrigo Andrade', cpf: '706.508.980-01', email: 'rodrigo@rodrigo.com',
                        especialidade: 'Reumatologista', crm: '123456'
    assert medico.save
  end

  test 'Criando medico com o campo cpf invalido' do
    medico = Medico.new nome: 'Maria Eduarda', cpf: '99988877766', email: 'duda@med.al',
                        especialidade: 'Cardiologista', crm: '553344'
    assert_not medico.save
  end
end

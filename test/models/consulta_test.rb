require "test_helper"

class ConsultaTest < ActiveSupport::TestCase
  test 'Criando consulta sem paciente' do
    medico = Medico.new nome: 'Rodrigo Andrade', cpf: '706.508.980-01', email: 'rodrigo@rodrigo.com',
                        especialidade: 'Reumatologista', crm: '123456'
    assert medico.save

    consulta = Consulta.new data: '2022-09-35', horario: '10:00', medico_id: medico.id

    assert_not consulta.save
  end

  test 'Criando consulta sem data' do
    paciente = Paciente.new nome: 'Ana Paula', data_nascimento: '1996-01-11',
                            cpf: '111.222.333-44', email: 'ana@ana.com'
    assert_not paciente.save

    medico = Medico.new nome: 'Nathalia Nielly', cpf: '706.508.980-01', email: 'naty@nielly.com',
                        especialidade: 'Ortopedista', crm: '123456'
    assert medico.save

    consulta = Consulta.new horario: '15:30', paciente_id: paciente.id, medico_id: medico.id

    assert_not consulta.save
  end
end

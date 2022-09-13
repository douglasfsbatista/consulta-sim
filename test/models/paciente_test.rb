require "test_helper"

class PacienteTest < ActiveSupport::TestCase
  test 'Criando paciente com o campo nome invalido' do
    paciente = Paciente.new nome: '', data_nascimento: '1996-09-01',
                            cpf: '10307715450', email: 'douglas@teste.com'
    assert_not paciente.save
  end

  test 'Criando paciente com e-mail inválido' do
    paciente = Paciente.new nome: 'Ana Paula Macena', data_nascimento: '1996-01-11',
                            cpf: '111.222.333-44', email: 'ana@ana.com'
    assert_not paciente.save
  end
end

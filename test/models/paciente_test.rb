require "test_helper"

class PacienteTest < ActiveSupport::TestCase
  test 'Criando paciente com o campo nome invalido' do
    paciente = Paciente.new nome: '', data_nascimento: '1996-09-01',
                            cpf: '10307715450', email: 'douglas@teste.com'
    assert_not paciente.save
  end

  test "Criando paciente válido" do
    paciente = Paciente.new nome: "Ana Paula", data_nascimento: "1996-01-11", cpf: "052.714.070-80", email: "anaps@gmail.com"
    assert paciente.save
  end
end

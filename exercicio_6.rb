=begin
Classes:
Funcionario: nome, salario_base, calcular_salario()
Gerente: bonus_gerente, calcular_salario()
Desenvolvedor: horas_extras, calcular_salario()
Módulo:
Beneficios:
calcular_vale_transporte()
calcular_vale_refeicao()

Herança: Gerente e Desenvolvedor herdam de Funcionario.
Descrição: Implemente a hierarquia de classes e o módulo Beneficios que é incluído nas classes Gerente e Desenvolvedor para calcular benefícios adicionais.
=end

require_relative 'beneficios'
class Funcionario
  include Beneficios
  attr_accessor :nome, :salario_base
  def initialize(nome, salario_base)
    @nome = nome
    @salario_base = salario_base
    puts "nome: #{nome}, salario_base: #{salario_base}"
  end

  def calcular_salario
    @salario_base
  end
end

class Gerente < Funcionario
  attr_accessor :bonus_gerente
  def initialize(nome, salario_base,bonus_gerente)
    super(nome, salario_base)
    @bonus_gerente = bonus_gerente
    puts "bonus_gerente: #{bonus_gerente}"
  end

  def calcular_salario
   @salario_base + @bonus_gerente
  end

end

class Desenvolvedor < Funcionario
  SALARIO_HORA_EXTRA = 30
  attr_accessor :horas_extras
  def initialize(nome, salario_base,horas_extras)
    super(nome, salario_base)
    @horas_extras = horas_extras
    puts "horas_extras: #{horas_extras}"
  end

  def calcular_salario
    (@horas_extras * SALARIO_HORA_EXTRA) + salario_base
  end
end

obj = Funcionario.new("David", 2000.00)
obj.calcular_salario
puts obj.calcular_vale_transporte(obj.salario_base)
puts obj.calcular_vale_refeicao(obj.salario_base)

obj2 = Gerente.new("Morais", 5000.00, 650.00)
puts obj2.calcular_vale_transporte(obj2.calcular_salario)
puts obj2.calcular_vale_refeicao(obj2.calcular_salario)

obj3 = Desenvolvedor.new("Marcos", 4500.00, 6)
puts obj3.calcular_vale_transporte(obj3.calcular_salario)
puts obj3.calcular_vale_refeicao(obj3.calcular_salario)






class Funcionario
  attr_reader :nome, :idade, :salario

  def initialize(nome, idade, salario)
    @nome = nome
    @idade = idade
    @salario = salario
    puts "Funcionario: #{nome}; Idade: #{idade}; Salário: R$#{'%.2f' % salario}"
  end

  def trabalhar
    puts "#{@nome} está trabalhando."
  end
end

class Gerente < Funcionario
  def initialize(nome, idade, salario)
    super(nome, idade, salario)
    puts "Gerente: #{nome}; Idade: #{idade}; Salário: R$#{'%.2f' % salario}"
  end

  def aprovar_projeto(decisao)
    if decisao == 0
      puts "Projeto aprovado!"
    else
      puts "Projeto reprovado!"
    end
  end
end

class Diretor < Funcionario
  attr_accessor :salario

  def initialize(nome, idade, salario)
    super(nome, idade, salario)
    puts "Diretor: #{nome}; Idade: #{idade}; Salário: R$#{'%.2f' % salario}"
  end

  def aumentar_salario(valor)
    @salario += valor
    puts "Novo salário do Diretor #{@nome}: R$#{'%.2f' % @salario}"
  end
end

# Criação de objetos e chamadas de métodos
funcionario = Funcionario.new("Jurandir", 30, 5000.00)
funcionario.trabalhar

gerente = Gerente.new("Rodinei", 59, 12500.00)
gerente.aprovar_projeto(0)  # 0 para aprovar, 1 para reprovar

diretor = Diretor.new("Rodrigo", 79, 67000.00)
diretor.aumentar_salario(5000.00)  # Aumenta o salário em 5000.00

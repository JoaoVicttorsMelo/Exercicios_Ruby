=begin
Classes:
  Livro: titulo, autor, isbn, emprestar()
Revista: numeroEdicao, calcularMulta()
Jornal: dataPublicacao, calcularMulta()
Herança: Revista e Jornal herdam de Livro
=end

class Livro
  attr_accessor :titulo , :autor, :isbn, :disponibilidade, :data_emprestimo, :data_devolucao
  def initialize(titulo, autor, isbn)
    @titulo = titulo
    @autor = autor
    @isbn = isbn
    @disponibilidade = true
    @data_devolucao = Time.now + (14 * 24 * 60 * 60)

  end
  def emprestar
    if disponibilidade
      puts "O livor #{titulo} esta disponivel, deseja alugar?: s/n"
      resp = gets.chomp.downcase
      if resp == "s"
        @disponibilidade=false
        puts "Livro #{titulo} do autor #{autor} foi alugado com sucesso na data #{Time.now.strftime("%d/%m/%Y")}"
        puts "Você deve devolver o livro no dia: #{@data_devolucao.strftime("%d/%m/%Y")}"
    else
      puts "Aluguel cancelado"
      end
    else
      puts "O livro já esta alugado"
    end
  end

  def calcular_multa
    if @data_devolucao < Time.now
      dias_atraso = (@data_devolucao - Time.now) / (24 * 60 * 60)
      multa = dias_atraso*5
      puts "Você deveria devolver o livro na data: #{@data_devolucao.strftime("%d/%m/%Y")}, porem não devolveu, atrasando no total de dias: #{dias_atraso.round}
dias, logo a sua multa é de: R$#{multa.floor(2)}"
    else
      puts "O livro ainda não passou da data de devolução"
    end

  end
end

class Revista < Livro
  def initialize(titulo, autor, isbn, revista)
    super(titulo, autor, isbn)
    @revista = revista
    puts "Titulo: #{@titulo}, Autor: #{@autor}, ISBN: #{@isbn}, Revista: #{@revista}"
  end
end

class Jornal < Livro
  def initialize(titulo, autor, isbn, dataPublicacao)
    super(titulo, autor, isbn)
    @dataPublicacao = dataPublicacao
    puts "Titulo: #{@titulo}, Autor: #{@autor}, ISBN: #{@isbn}, data de publicação: #{@dataPublicacao}"
  end
end

  obj = Livro.new"As aventuras de Oliver", "Oliver",1233432.343
  puts "Gostaria de alugar o livro: #{obj.titulo} s/n?"
  resp = gets.chomp.downcase
  if resp == "s"
    obj.emprestar
  end

obj1 = Revista.new("Alice no pais das maravilhas", 'Alice', 1231234, "Magazine")
obj1.calcular_multa

obj2 = Jornal.new("Inflação Aumenta", 'William Bonner', 123143, 20240801)
obj2.calcular_multa

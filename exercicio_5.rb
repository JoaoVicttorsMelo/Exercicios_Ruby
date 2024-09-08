class Animal
  attr_accessor :nome, :idade, :especie

  def initialize(nome, idade, especie)
    @nome = nome
    @idade = idade
    @especie = especie
    @fome = true
    puts "Nome: #{@nome}, Idade: #{@idade}, Espécie: #{@especie}"
  end

  def alimentar
    if @fome
      puts "O animal foi alimentado."
      @fome = false
    else
      puts "O animal já está alimentado."
    end
  end
end

class Mamifero < Animal
  attr_accessor :tipoPelo

  def initialize(nome, idade, especie, tipoPelo)
    super(nome, idade, especie)
    @tipoPelo = tipoPelo
    @dormindo = false
    puts "Nome: #{@nome}, Idade: #{@idade}, Espécie: #{@especie}, Tipo de Pelo: #{@tipoPelo}"
  end

  def dormir
    if @dormindo
      puts "O animal já está dormindo."
    else
      @dormindo = true
      puts "O animal está dormindo."
    end
  end
end

class Ave < Animal
  attr_accessor :corPenas

  def initialize(nome, idade, especie, corPenas)
    super(nome, idade, especie)
    @corPenas = corPenas
    @voando = false
    puts "Nome: #{@nome}, Idade: #{@idade}, Espécie: #{@especie}, Cor das Penas: #{@corPenas}"
  end

  def voar
    if @voando
      puts "O animal já está voando."
    else
      @voando = true
      puts "O animal começou a voar."
    end
  end
end

class Reptil < Animal
  attr_accessor :tipoEscama

  def initialize(nome, idade, especie, tipoEscama)
    super(nome, idade, especie)
    @tipoEscama = tipoEscama
    @rastejando = false
    puts "Nome: #{@nome}, Idade: #{@idade}, Espécie: #{@especie}, Tipo de Escama: #{@tipoEscama}"
  end

  def rastejar
    if @rastejando
      puts "O animal já está rastejando."
    else
      @rastejando = true
      puts "O animal começou a rastejar."
    end
  end
end

# Testando as classes
mamifero = Mamifero.new("Leão", 5, "Felino", "Curto")
mamifero.alimentar
mamifero.dormir

ave = Ave.new("Papagaio", 2, "Ave", "Verde")
ave.alimentar
ave.voar

reptil = Reptil.new("Cobra", 3, "Réptil", "Escamosa")
reptil.alimentar
reptil.rastejar

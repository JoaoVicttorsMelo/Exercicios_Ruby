=begin
Classes:
Veiculo: marca, modelo, ano, acelerar(), frear()
Carro: numeroPortas, tipoCombustivel
Moto: cilindradas, tipoFreio
Herança: Carro e Moto herdam de Veiculo
=end

class Veiculo
  attr_accessor :marca, :modelo, :ano
  def initialize(marca, modelo, ano)
    @marca = marca
    @modelo = modelo
    @ano = ano
    @acelerar = false
    puts "marca: #{@marca}, modelo: #{@modelo}, ano: #{@ano}"
    puts "O veículo  não esta acelerando"
  end

  def acelerar
    @acelerar=true
    puts "O veículo  esta acelerando"
  end

  def frear
    @acelerar=false
    puts "O veículo  não esta acelerando"

  end
end

class Carro < Veiculo
  attr_accessor :numeroPortas, :tipoCombustivel
  def initialize(marca, modelo, ano, numeroPortas, tipoCombustivel )
    super(marca, modelo, ano)
    @numeroPortas = numeroPortas
    @tipoCombustivel = tipoCombustivel
    puts "marca: #{@marca}, modelo: #{@modelo}, ano: #{@ano}, tipo combustivel: #{@tipoCombustivel}, numeroPortas: #{@numeroPortas}"
  end
end

class Moto < Veiculo
  attr_accessor :cilindradas, :tipoFreio
  def initialize(marca, modelo, ano, cilindradas, tipoFreio)
    super(marca, modelo, ano)
    @cilindradas = cilindradas
    @tipoFreio = tipoFreio
    puts "marca: #{@marca}, modelo: #{@modelo}, ano: #{@ano}, tipo freio: #{@tipoFreio}, cilindradas: #{@cilindradas}"
  end
end

obj = Veiculo.new('Honda','gol','2020')
obj.acelerar
obj.frear

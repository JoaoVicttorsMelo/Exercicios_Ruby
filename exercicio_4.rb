=begin
Classes:
Item: nome, preco
Comida: tempoPreparo, calcularTempoEntrega()
Bebida: tamanho, calcularTempoEntrega()
Pedido: itens, total, adicionarItem(), removerItem()
Herança: Comida e Bebida herdam de Item
Associação: Pedido tem uma lista de Item
=end

class Item
  attr_accessor :nome, :preco
  def initialize(nome, preco)
    @nome = nome
    @preco = preco
    puts "nome #{@nome}, preco #{@preco}"
  end

  def calcularTempoEntrega

  end
end

class Comida < Item
  attr_accessor :tempoPreparo
  def initialize(nome, preco ,tempoPreparo)
    super(nome, preco)
    @tempoPreparo = tempoPreparo
    puts "tempo preparo #{@tempoPreparo}"
  end
end

class Bebida < Item
  attr_accessor :tamanho
  def initialize(nome,preco, tamanho)
    super(nome,preco)
    @tamanho = tamanho
    puts "tamanho #{@tamanho}"
  end
end

class Pedido
  attr_accessor :itens, :total
  def initialize(itens,total)
    @itens = itens
    @total = [total]
    puts "itens #{@total}, total #{@itens}"
    @list = [itens]
  end

  def adicionarItens(item,total)
    puts "#{@list}"
    @list << item
    @total << total
    puts "#{@list}, #{@total}"
  end
  def removerItem(item)
    @list.delete(item)
    puts "#{@list}"
  end

  def calcularTotal
    soma = 0
    for totals in @total
      soma += totals
    end
    puts "o total foi de #{soma}"
  end
end

obj = Pedido.new("Frauda",2)
obj.adicionarItens("tequila",50)
obj.removerItem("Frauda")
obj.calcularTotal

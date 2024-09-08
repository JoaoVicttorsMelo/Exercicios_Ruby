module Beneficios
  DESCONTO_VALE_TRANSPORTE = 0.06
  DESCONTO_VALE_REFEICAO = 0.12

  def calcular_vale_transporte(salario_base)
    calc_deconto = salario_base * DESCONTO_VALE_TRANSPORTE
   salario_base - calc_deconto

  end
  def calcular_vale_refeicao(salario_base)
    calc_deconto = (salario_base * DESCONTO_VALE_REFEICAO)
    salario_base - calc_deconto
  end
end

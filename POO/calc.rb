class Calculator
  
  def somatorio(*args)
    values = [*args]
    p values.inject(:+)
  end

end

calc = Calculator.new()

calc.somatorio(5, 6, 8, 10, 1, 10)

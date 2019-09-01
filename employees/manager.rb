require_relative 'employee'

class Manager < Employee
  def discount
    @discount = set_discount
  end

  def set_discount
    discount_value? ? @value : 0
  end

  def discount_value?
    (0..0.4) === @value
  end

  def gets_discount
    puts 'Qual o valor do desconto? 0 até 0.4'
    @value = gets.strip.to_f
  end
end

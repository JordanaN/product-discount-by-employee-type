require_relative 'product'

class Book < Product
  def grant_discount(discount)
    p discount
    puts "o valor final do produto é #{super(discount: discount)}"
  end
end

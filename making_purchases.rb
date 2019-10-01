require './products/book'
require './employees/manager'
require './employees/attendant'
require_relative 'shopping_cart'

puts 'Bem vindo a livraria'

def init_product
  @book = Book.new('Orientação a Objetos', 50.00)
end

def init_manager
  Manager.new('Gerente', 'suzana@livraria.com.br')
end

def init_attendant
  Attendant.new('Atendente', 'eliana@livraria.com.br')
end

def define_seller
  @employee == 1 ? init_manager : init_attendant
end

def init_shopping_cart
  ShoppingCart.new(init_product, define_seller, @discount)
end

puts 'Qual o funcinário está fazendo a venda?'
puts '1 - Gerente'
puts '2 - Atendente'
@employee = gets.strip.to_i
define_seller

init_product
puts "O livro #{@book.title} está custando #{@book.value}"

puts 'Informe o valor do disconto: '
@discount = gets.strip.to_f

cart = init_shopping_cart
cart.finalize_purchases

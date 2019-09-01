require './products/book'
require './employees/manager'
require './employees/attendant'
require 'date'

puts 'Bem vindo a livraria'

def init_product
  @book = Book.new(
    title: 'Orientação a Objetos: Aprenda seus conceitos e suas aplicabilidades de forma efetiva',
    value: 50.00
  )
end

def init_manager
  @manager = Manager.new(
    name: 'Suzana',
    birthdate: Date.new(1980, 8, 8),
    email: 'suzana@livraria.com.br',
  )
end

def init_attendant
  @attendant = Attendant.new(
    name: 'Eliana',
    birthdate: Date.new(1995, 1, 28),
    email: 'eliana@livraria.com.br',
  )
end

def product_discount(discount)
  @book.grant_discount(discount)
end


puts 'Qual o funcinário está fazendo a venda?'
puts '1 - Gerente'
puts '2 - Atendente'
opcional = gets.strip

init_product
puts "O livro #{@book.title} está custando #{@book.value}"

case opcional
when '1'
  init_manager
  @manager.gets_discount
  puts "O desconto para o livro é de #{@manager.discount}"
  product_discount(@manager.discount)
when '2'
  init_attendant
  @attendant.gets_discount
  puts "O desconto para o livro é de #{@attendant.discount}"
  product_discount(@attendant.discount)
else
  puts 'opção invalida'
end

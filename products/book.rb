# frozen_string_literal: true

require_relative 'abstract_product'

class Book < AbstractProduct
  def apply_discount(discount)
    puts "o valor final do produto é #{super(discount)}"
  end
end

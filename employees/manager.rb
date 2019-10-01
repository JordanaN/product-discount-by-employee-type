# frozen_string_literal: true

require_relative 'abstract_employee'

class Manager < AbstractEmployee
  MAX_DISCOUNT = 0.4

  def return_max_discount
    MAX_DISCOUNT
  end
end

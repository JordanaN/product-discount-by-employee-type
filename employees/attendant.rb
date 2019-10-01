# frozen_string_literal: true

require_relative 'abstract_employee'

class Attendant < AbstractEmployee
  MAX_DISCOUNT = 0.2

  def return_max_discount
    MAX_DISCOUNT
  end
end

# frozen_string_literal: true

class AbstractProduct
  attr_accessor :title, :value

  def initialize(title, value)
    @title = title
    @value = value
  end

  def apply_discount(discount)
    @value - discount
  end
end

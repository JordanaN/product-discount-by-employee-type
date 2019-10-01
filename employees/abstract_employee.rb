# frozen_string_literal: true

class AbstractEmployee
  attr_accessor :name, :email

  def initialize(name, email)
    @name = name
    @email = email
  end

  def allow_discount(value)
    discount_value?(return_max_discount, value) ? value : 0
  end

  private

  def discount_value?(max_discount, value)
    (0..max_discount).include?(value)
  end
end

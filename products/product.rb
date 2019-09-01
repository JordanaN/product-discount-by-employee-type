class Product
  attr_accessor :title, :value

  def initialize(overrides = {})
    @title = overrides.fetch(:title)  
    @value = overrides.fetch(:value)  
  end

  def grant_discount(discount: discount)
    @value - discount
  end
end

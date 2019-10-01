class ShoppingCart
  def initialize(products, seller, discount)
    @products = products
    @seller = seller
    @discount = discount
  end

  def finalize_purchases
    @products.tap do |product|
      product.apply_discount(allow_discount)
    end
  end

  private

  def allow_discount
    @seller.allow_discount(@discount)
  end
end

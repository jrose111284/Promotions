class Checkout
  attr_reader :products, :order

  def initialize
    @products = {
      001 => 9.25,
      002 => 45.00,
      003 => 19.95
    }
    @order = []
  end

  def scan(item)

  end

end

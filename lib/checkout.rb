require 'byebug'
class Checkout
  attr_reader :products, :order

  def initialize(item = Item)
    @item = item
    @products = {
      001 => 9.25,
      002 => 45.00,
      003 => 19.95
    }
    @order = []
  end

  def scan(barcode)
    fail "#{barcode} is not in products" unless item.has_product?(barcode)
    @order << products[barcode]
  end

  def total
    @order.inject(:+)
  end

  private
  attr_reader :item

end

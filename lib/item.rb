class Item

  attr_reader :products

  def initialize
    @products =   {
        "Lavender heart" => 9.25,
        "Personalised cufflinks" => 45.00,
        "Kids T-shirt" => 19.95
      }
  end

  def print
    products.map do |title, price|
      "%s £%.2f" % [title.to_s.capitalize, price]
    end.join(", ")
  end

  def has_product?(item)
    products.has_key?(item)
  end

  def price(item)
    products[item]
  end
end

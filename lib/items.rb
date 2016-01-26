class Items

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
end

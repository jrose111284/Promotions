require 'items'

describe Items do

  subject(:item) { described_class.new }

  let (:products) do
  {
    "Lavender heart" => 9.25,
    "Personalised cufflinks" => 45.00,
    "Kids T-shirt" => 19.95
  }
end

  it 'prints a list of products with prices' do
    expect(item.print).to eq("Lavender heart £9.25, Personalised cufflinks £45.00, Kids t-shirt £19.95")
  end

  it "tells if a product is available" do
    expect(item.has_product?("Lavender heart")).to be(true)
  end

  it "tells if a product is not available" do
    expect(item.has_product?("playstation")).to be(false)
  end

end

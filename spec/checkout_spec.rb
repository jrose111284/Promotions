require 'checkout'
require 'items'

describe Checkout do
  subject(:checkout) { described_class.new }

  let(:item) { instance_double("item") }

  let (:products) do
    {
      001 => 9.25,
      002 => 45.00,
      003 => 19.95
    }
  end
  # before do
  #   allow(item).to receive(:has_product?).with(001).and_return(true)
  #   allow(item).to receive(:has_product?).with(002).and_return(true)
  #   allow(item).to receive(:has_product?).with(003).and_return(true)
  #
  #   allow(item).to receive(:price).with(001.to_sym).and_return(9.25)
  #   allow(menu).to receive(:price).with(002.to_sym).and_return(45.00)
  #   allow(menu).to receive(:price).with(003.to_sym).and_return(19.95)
  # end

  it "scans a item" do
    # checkout.scan(001)
    expect(checkout.scan(001)).to eq(9.25)
  end

end

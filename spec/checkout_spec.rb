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
  before do
    allow(item).to receive(:has_product?).with(001).and_return(true)
    allow(item).to receive(:has_product?).with(002).and_return(true)
    allow(item).to receive(:has_product?).with(003).and_return(true)

    allow(item).to receive(:price).with(001).and_return(9.25)
    allow(item).to receive(:price).with(002).and_return(45.00)
    allow(item).to receive(:price).with(003).and_return(19.95)
  end

  it "it initialize with a empty order" do
    expect(checkout.order).to be_empty
  end

end

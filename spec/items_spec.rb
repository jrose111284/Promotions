require 'items'

describe Items do

  subject(:item) { described_class.new }

  it 'prints a list of products with prices' do
       expect(item.print).to eq("Lavender heart £9.25, Personalised cufflinks £45.00, Kids t-shirt £19.95")
  end

end

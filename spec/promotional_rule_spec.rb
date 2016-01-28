require 'promotional_rule'

describe PromotionalRule do
  subject(:promotional_rule) { described_class.new }

  it "it give 10 percent off when you spend over £60" do
    expect(promotional_rule.ten_percent_discount(90)).to eq(81.00)
  end

  it "does not give discount if less then £60" do
    expect(promotional_rule.ten_percent_discount(66.00)).to eq(59.40)
  end
end

require "checkout"

describe Checkout do
  subject(:checkout) { described_class.new }

  describe "basket" do
    it "its empty when initialized" do
      expect(checkout.basket.length).to eq(0)
    end
  end

  describe "#scan" do
    it "stores item scaned in the basket" do
      checkout.scan("lavander heart")
    expect(checkout.basket.length).to eq(1) 
    end
  end
end

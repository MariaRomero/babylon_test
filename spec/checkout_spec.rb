require "checkout"

describe Checkout do
  # subject(:checkout) { described_class.new }
  describe "#basket" do
    it "initializes in 0" do
      co = Checkout.new
      expect(co.basket).to eq(nil)
    end
  end

  # describe "#scan" do
  #   it "stores item scaned in the basket" do
  #     co = Checkout.new(promotional_rules)
  #     co.scan("lavander heart")
  #   end
  # end
end

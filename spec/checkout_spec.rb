require "checkout"
require "stock"

describe Checkout do
  subject(:stock) { Stock.new }
  subject(:checkout) { described_class.new }
  subject(:checkout_w_promotion) { described_class.new(stock, ["two_or_more_lavender"]) }

  describe "basket" do
    it "its empty when initialized" do
      expect(checkout.basket.length).to eq(0)
    end
  end

  describe "#scan" do
    it "stores item scaned in the basket" do
      checkout.stock.add({"product_code" => 001, "name" => "Lavender heart", "price" => 9.25})
      checkout.scan({"product_code" => 001, "name" => "Lavender heart", "price" => 9.25})
      expect(checkout.basket.length).to eq(1)
    end
    it "raise an error if item was not part of the store stock" do
      expect{ checkout.scan({"product_code" => 001, "name" => "Lavender heart", "price" => 9.25}) }.to raise_error
    end
  end

  describe "#total" do
    it "returns the sum of the items price in the basket" do
      lavander = {"product_code" => 001, "name" => "Lavender heart", "price" => 9.25}
      cufflink ={"product_code" => 002, "name" => "Personalised cufflinks", "price" => 45.00}
      checkout.stock.add(lavander)
      checkout.stock.add(cufflink)
      checkout.scan(lavander)
      checkout.scan(cufflink)
      expect(checkout.total).to eq(54.25)
    end

    it "calculates promotions" do
      lavander = {"product_code" => 001, "name" => "Lavender heart", "price" => 9.25}
      cufflink = {"product_code" => 002, "name" => "Personalised cufflinks", "price" => 45.00}
      shirt = {"product_code" => 003, "name" => "Kids T-­shirt", "price" => 19.95}
      checkout_w_promotion.stock.add(lavander)
      checkout_w_promotion.stock.add(lavander)
      checkout_w_promotion.stock.add(shirt)
      checkout_w_promotion.scan(lavander)
      checkout_w_promotion.scan(shirt)
      checkout_w_promotion.scan(lavander)
      expect(checkout_w_promotion.total).to eq(36.95)
    end
  end
end

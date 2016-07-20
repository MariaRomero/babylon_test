require "promotions"

describe Promotions do

  basket = [{"product_code" => 001, "name" => "Lavender heart", "price" => 9.25},{"product_code" => 001, "name" => "Lavender heart", "price" => 9.25},{"product_code" => 002, "name" => "Personalised cufflinks", "price" => 45.00},{"product_code" => 002, "name" => "Personalised cufflinks", "price" => 45.00}]

  describe "#two_or_more_lavender" do
    it "returns discount of .75 per item when more than 1 Lavender heart is bought" do
      expect(Promotions.two_or_more_lavender basket).to eq(1.5)
    end
  end

  describe "#spend_over_sixty" do
    it "returns discount of 10% if total is more than 60 pounds" do
      expect(Promotions.spend_over_sixty basket).to eq(10.85)
    end
  end

end

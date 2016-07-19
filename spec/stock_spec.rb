require "stock"

describe Stock do
  subject(:stock) { described_class.new }

  describe "#add" do
    it "add items to the stock" do
      stock.add({"product code" => 001, "name" => "Lavender heart", "price" => 9.25})
      expect(stock.items_array).to eq([{"product code" => 001, "name" => "Lavender heart", "price" => 9.25}])
    end
  end

  describe "items available to purchase" do
    it "has items in stock available" do
      stock.add({"product code" => 001, "name" => "Lavender heart", "price" => 9.25})
      stock.add({"product code" => 002, "name" => "Personalised cufflinks", "price" => 45.00})
      stock.add({"product code" => 003, "name" => "Kids T-shirt", "price" => 19.95})
      expect(stock.items_array.length).to eq(3)
    end
  end
end

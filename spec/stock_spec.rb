require "stock"

describe Stock do
  subject(:stock) { described_class.new }

  describe "#add" do
    it "can add an item to the stock" do
      stock.add({"product_code" => 001, "name" => "Lavender heart", "price" => 9.25})
      expect(stock.items_array).to eq([{"product_code" => 001, "name" => "Lavender heart", "price" => 9.25}])
    end

    it "can add items to the stock" do
      stock.add({"product_code" => 001, "name" => "Lavender heart", "price" => 9.25})
      stock.add({"product_code" => 002, "name" => "Personalised cufflinks", "price" => 45.00})
      stock.add({"product_code" => 003, "name" => "Kids T-shirt", "price" => 19.95})
      expect(stock.items_array.length).to eq(3)
    end
  end

  describe "#remove" do
    it "removes items from the stock" do
      stock.add({"product_code" => 001, "name" => "Lavender heart", "price" => 9.25})
      stock.add({"product_code" => 002, "name" => "Personalised cufflinks", "price" => 45.00})
      stock.remove("Lavender heart")
      expect(stock.items_array.length).to eq(1)
      expect(stock.items_array[0]["name"]).to eq("Personalised cufflinks")
    end
  end

  describe "#item_on_stock" do
    it "returns if items is available" do
      stock.add({"product_code" => 001, "name" => "Lavender heart", "price" => 9.25})
      stock.add({"product_code" => 002, "name" => "Personalised cufflinks", "price" => 45.00})
      expect(stock.item_on_stock("Lavender heart")).to eq(true)

    end
  end
end

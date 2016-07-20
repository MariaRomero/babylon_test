class Stock
  attr_reader :items_array

  def initialize
    @items_array = []
  end

  def add item
    items_array.push(item)
  end

  def remove name
    index = 0
    items_array.each do |item|
      if item["name"] == name
        return items_array.slice!(index)
      end
      index += 1
    end
  end

  def item_on_stock name
    index = 0
    item_exist = false
    items_array.each do |item|
      if item["name"] == name
        item_exist = true
        return item_exist
      end
      index += 1
    end
    item_exist
  end

end

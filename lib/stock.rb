class Stock
  attr_reader :items_array
  def initialize
    @items_array = []
  end

  def add(item)
    items_array.push(item)
  end

  def heading_of_table
    return "  Product code  |    Name      | Price "
  end


end

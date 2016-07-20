require_relative 'stock'
require_relative 'promotions'

class Checkout

  attr_accessor :basket, :stock, :promotions_required

  def initialize(stock = Stock.new, promotional_rule = [])
    @stock = stock
    @basket = []
    @promotions_required = promotional_rule
  end

  def scan(item)
    if stock.item_on_stock(item["name"]) == true
      basket.push(stock.remove(item["name"]))
    else
      raise "Item was not added in stock"
    end
  end

  def total
    total = 0
    discount = 0
    basket.each do |item|
      total += item["price"]
    end
    if promotions_required.length > 0
      discount = Promotions.call(basket, promotions_required)
    end
    return total - discount
  end
end

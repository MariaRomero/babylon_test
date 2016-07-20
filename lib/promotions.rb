class Promotions
  attr_reader :items_array

  def self.call(basket, promotions = [])
    discount = 0
    promotions.each do |promotion|
      discount += self.send(promotion, basket)
    end
    discount
  end

  def self.two_or_more_lavender(basket)
    qty = basket.select { |item| item["name"] == "Lavender heart" }.count
    if qty > 1
      total = qty * 0.75
    end
    total
  end

  def self.spend_over_sixty(basket)
    total = 0
    basket.each do |item|
      total += item["price"]
    end
    return (total * 0.10).round(2)
  end

end

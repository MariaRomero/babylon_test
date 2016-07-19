require './lib/checkout.rb'
require './lib/stock.rb'

co = Checkout.new
stock = Stock.new

stock.add({"product code" => 001, "name" => "Lavender heart", "price" => 9.25})
stock.add({"product code" => 002, "name" => "Personalised cufflinks", "price" => 45.00})
stock.add({"product code" => 003, "name" => "Kids T-shirt", "price" => 19.95})

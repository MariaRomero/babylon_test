# babylon_test

To clone:  
`git clone https://github.com/MariaRomero/babylon_test`  
  
####How to run:  
- open irb
- `require './lib/checkout.rb'`
- `co = Checkout.new`

The Product Range is represented as a hash inside the ProductRange module, as so:
```
    { 
    {"product_code" => 001, "name" => "Lavender heart", "price" => 9.25}, 
    {"product_code" => 001, "name" => "Lavender heart", "price" => 9.25},
    {"product_code" => 003, "name" => "Kids T-­shirt", "price" => 19.95}
    }
```

To 'scan' an item, use its product code:
- `co.scan({"product_code" => 003, "name" => "Kids T-­shirt", "price" => 19.95})`  

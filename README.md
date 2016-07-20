# Checkout_test

To clone:  
`git clone https://github.com/MariaRomero/checkout_test.git`  

####How to run:  
- open irb
- `require './lib/checkout.rb'`
- `co = Checkout.new`

The Product Range is represented as a hash inside the ProductRange module, as so:
```
    {
    {"product_code" => 001, "name" => "Lavender heart", "price" => 9.25},
    {"product_code" => 002, "name" => "Personalised cufflinks", "price" => 45.00},
    {"product_code" => 003, "name" => "Kids T-­shirt", "price" => 19.95}
    }
```

To 'scan' an item, use its product code:
- `co.scan({"product_code" => 003, "name" => "Kids T-­shirt", "price" => 19.95})`  

To view your current basket:
- `co.basket`  

To get the total price:
- `co.total`

Testing:  
To run the rspec tests:

````
$ bundle
$ rspec
````

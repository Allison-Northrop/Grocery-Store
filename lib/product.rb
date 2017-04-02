PRODUCTS = []

module StockManager
  class Product
    attr_reader :name, :unit_size, :market_price, :discount_price, :description

    def initialize(name, unit_size, market_price, discount_price, description)
      @name = name.upcase.to_s
      @unit_size = unit_size.to_s
      @market_price = market_price.to_f
      @discount_price = discount_price.to_f
      @description = description.to_s
    end


    def self.all
      return PRODUCTS
    end

    def self.find(product_name)
      all_products = StockManager::Product.all
      all_products.each do |product|
        if product.name == product_name.upcase
          print product
          return product
        end
        #TODO raise an argument error here
      end
    end

    def discounted?
        #contains logic if it's discounted

    end



    end
  end

  a = StockManager::Product.new("Alfalfa", "9 pounds", 1.90, 1, "kind of like hay")
  # puts a.name
  # puts a.unit_size
  # puts a.market_price
  # puts a.description

  b = StockManager::Product.new("Rice", "1 pound", 3.00, 2, "it's great in sushi")
  # puts b.market_price
  #
  c = StockManager::Product.new("bread", "9 pounds", 9.0, 3, "it's bread!")

  d = StockManager::Product.new("cardemon", "1 oz", 10, 7.60, "it's delicious in tea")

  e = StockManager::Product.new("bok choy", "1 pound", 3, 2.50, "good in soup")
  # puts b.market_price + a.market_price
  #
  # puts a.discount_price
  # puts b.discount_price
  # puts a.discount_price + b.discount_price

  PRODUCTS << a
  PRODUCTS << b
  PRODUCTS << c
  PRODUCTS << d
  PRODUCTS << e 

  # puts StockManager::Product.all
  # StockManager::Product.find("rice")

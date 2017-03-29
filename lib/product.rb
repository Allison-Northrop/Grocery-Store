PRODUCTS = []

module StockManager
  class Product
    attr_accessor :name, :unit_size, :market_price, :discount_price, :description

    def initialize(name, unit_size, market_price, discount_price, description)
      @name = name.upcase.to_s
      @unit_size = unit_size.to_s
      @market_price = market_price.to_f
      @discount_price = discount_price.to_f
      @description = description.to_s
    end


    def self.all
      return PRODUCTS
      # all_products = []
      # PRODUCTS.each do |product|
      #   puts product.name
      #   # name = product[0].to_s
      #   # unit_size = product[1].to_s
      #   # market_price = product[2].to_f
      #   # discount_price = product[3].to_f
      #   # description = product[4].to_s
      #   # a_product = StockManager::Product.new(name, unit_size, market_price, discount_price, description)
      #   # all_products << a_product
      # end
      # # return all_products
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
  c = StockManager::Product.new("bread", "9 pounds", 9.0, 33, "it's bread!")
  # puts b.market_price + a.market_price
  #
  # puts a.discount_price
  # puts b.discount_price
  # puts a.discount_price + b.discount_price

  PRODUCTS << a
  PRODUCTS << b
  PRODUCTS << c

  # puts StockManager::Product.all
  StockManager::Product.find("rice")

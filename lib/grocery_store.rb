require_relative 'product'
require_relative 'aisle'

module StockManager
  class Grocery_Store
    attr_accessor :store_name, :products, :aisles

    def initialize(store_name)
      #have a name
      @store_name = store_name.upcase
      #store a collection of products
      @products = []
      @aisles = []
    end

    # allow you to add new products
    #select one of the products from the product list and add to store
    def add_product(name, unit_size, market_price, discount_price, description)
      product = StockManager::Product.new(name, unit_size, market_price, discount_price, description)
      @products << product
      return @products
    end

    #selects one of the aisles from teh aisle list and adds to the store
    def add_aisle(category)
      aisle = StockManager::Aisle.new(category)
      @aisles << aisle
      return @aisles
    end


    #finds products in a specific aisle
    def show_products_in_aisle(aisle_category)
      @aisles.each do |aisle|
        if aisle.category == aisle_category.upcase
          k = aisle.products_in_aisle
          return k
        end
      end
      return
    end

    #returns an aisle if the product is in the aisle (keeps track if the)
    def find_product_in_aisle(product_name)
      @aisles.each do |aisle|
        aisle.product_in_aisle.each do |product|
          if product.name == product_name.upcase
            return aisle
          end
        end
      end
    end

    #grocery store purchases more inventory
    def add_inventory(product_name, quantity)
      @products.each do |product|
        if product.name == product_name.upcase
          product.quantity += quantity
        end
      end
    end


  end
end


x = StockManager::Grocery_Store.new("albertsons")
x.add_product("Rice", "1 pound", 3.00, 2, "it's great in sushi")
x.add_product("bread", "9 pounds", 9.0, 3, "it's bread!")
x.add_aisle("baking")
print x.find_products_in_aisle("rice")

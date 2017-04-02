require_relative 'product'
require_relative 'aisle'

module StockManager
  class Grocery_Store

    attr_accessor :store_name

    def initialize(store_name)
      #have a name
      @store_name = store_name
      #store a collection of products
      @products = []
      @aisles = []
      @product_inventory = {}
    end

    #select one of the products from the product list and add to store
    def new_product(product_name)
      PRODUCTS.each do |product|
        if product.name == product_name.upcase
          @product_inventory << product
          #TODO raise an argument error of the product doens't exist yet
        end
      end
    end

    # #make a thing that ties products to amount available
    # def inventory
    #
    #   how many products* the grocery store has
    # end
    #
    # def add_inventory(product_quantity)
    #
    #
    #
    # end
    #
    # def purchase of products
    #   if a product is purchased, the inventory must go down
    # end




    #keep track of which aisle each product is in
    def products_in_aisle
      StockManager::Aisle.find(@category)
      # products = StockManager::Product.all
    end


    #find products in a specific aisle
    # def find_products_in_aisle(aisle_name)
    #   StockManager::Aisle.find(@category)



  end
end


a = StockManager::Grocery_Store.new("albertsons")
a.new_product("rice")
print @product_inventory

# allow you to add new products
# given a customer order (list of product IDs), be able to
# calculate the total price of the order
# calculate the total savings

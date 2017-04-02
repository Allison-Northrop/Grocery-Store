require_relative 'product'
require_relative 'aisle'
GROCERY_STORES = []
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
    def add_product(product_name)
      PRODUCTS.each do |product|
        if product.name == product_name.upcase
          @products << product
          return @products
          #TODO raise an argument error of the product doens't exist yet
        end
      end
    end

    #selects one of the aisles from teh aisle list and adds to the store
    def add_aisle(aisle_name)
      AISLES.each do |aisle|
        if aisle.category == aisle_name.upcase
          @aisles << aisle
          return @aisles
        end
      end
    end

    #keep track of which aisle each product is in
    def product_aisle?(product_name)
      # puts @aisles
   end



    #   @aisles.each do |aisle|
    #     aisle.each do |product|
    #       if product.name == product_name.upcase
    #         print aisle.category
    #         return aisle.category
    #       end
    #     end
    #   end
    # end

    def show_products_in_aisle(aisle_category)
      @aisles.each do |aisle|
        if aisle.category == aisle.category 
          return aisle.products_in_aisle
        end
      end
    end

    # find products in a specific aisle
    def find_products_in_aisle(product)


    end

  end
end


x = StockManager::Grocery_Store.new("albertsons")
# puts "yyyyyyyyyyyyyy"
x.add_product("rice")
x.add_product("rice")
x.add_product("rice")

x.add_aisle("baking")
x.add_aisle("spices")
# a.product_aisle?("rice")

# puts a.store_name
# puts a.products

# print x.aisles

print x.show_products_in_aisle("baking")
# print a.show_products_in_aisle
# given a customer order (list of product IDs), be able to
# calculate the total price of the order
# calculate the total savings

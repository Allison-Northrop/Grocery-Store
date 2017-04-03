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

    #decrease inventory if a product is purchased
    #TODO THIS ISN'T WORKING
    def purchase_product(product_name)
      @products.delete_at(@products.find_index(product_name) || @products.length)
      return @products
    end



    #find products in a specific aisle ** currnetly it's just showing not finding?
    #TODO figure out how to search the returned info
    #this isn't working TODO
    def show_products_in_aisle(aisle_category)
      @aisles.each do |aisle|
        if aisle.category == aisle_category
          return aisle.products_in_aisle
        end
      end
    end


    #keep track of which aisle each product is in
    #TODO WHY IS THIS PRINTING ALL OF THE AISLES?
    def product_aisle?(product_name)
      @aisles.each do |aisle|
        aisle.each do |product|
          if product.name == product_name.upcase
            return aisle
          else
            print "NOT IT"
          end
        end
      end
    end





    # find products in a specific aisle
    def find_products_in_aisle(product)


    end

  end
end


x = StockManager::Grocery_Store.new("albertsons")
# puts x.add_product("alfalfa") * 3
x.add_product("rice")
x.add_product("rice")
x.add_product("rice")
x.add_product("cardemon")

x.add_aisle("baking")
x.add_aisle("spices")
print x.product_aisle?("rice")


# print x.product_aisle?("rice")
# puts a.store_name
# puts a.products

# print x.aisles

# print a.show_products_in_aisle
# given a customer order (list of product IDs), be able to
# calculate the total price of the order
# calculate the total savings





#product aisle
#   @aisles.each do |aisle|
#     aisle.each do |product|
#       if product.name == product_name.upcase
#         print aisle.category
#         return aisle.category
#       end
#     end
#   end
# end

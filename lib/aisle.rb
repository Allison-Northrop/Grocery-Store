require_relative 'product'
AISLES = []
module StockManager
  class Aisle

    attr_reader :category, :products_in_aisle

    def initialize(category)
      @category = category.upcase
      @products_in_aisle = []
    end

    def self.all
      return AISLES
    end


    def self.find(aisle_name)
      all_aisles = StockManager::Aisle.all
      all_aisles.each do |aisle|
        if aisle.category == aisle_name.upcase
          return aisle.products_in_aisle
        end
      end
    end


    def add_new_product(new_product)
      new_product = new_product.upcase
      PRODUCTS.each do |product|
        if product.name == new_product
          return @products_in_aisle << product
        end
        #here I need to raise an argument error if the product doesn't exist
      end
    end

  end
end


a = StockManager::Aisle.new("baking")
a.add_new_product("rice")
a.add_new_product("bread")

b = StockManager::Aisle.new("produce")
b.add_new_product("tomatoe")
b.add_new_product("bok choy")

c = StockManager::Aisle.new("spices")
c.add_new_product("cardemon")



AISLES << a
AISLES << b
AISLES << c
# print AISLE

# print StockManager::Aisle.find("baking")
# puts AISLE

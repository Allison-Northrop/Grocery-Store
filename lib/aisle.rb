require_relative 'product'
AISLE = []
module StockManager
  class Aisle

    attr_reader :category, :products_in_aisle

    def initialize(category)
      @category = category.upcase
      @products_in_aisle = []
    end

    def self.all
      return AISLE
    end

    def self.find(aisle_name)
      AISLE.each do |aisle|
        if aisle.category == aisle_name
          return aisle
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
a.add_new_product("poop")

AISLE << a
print AISLE

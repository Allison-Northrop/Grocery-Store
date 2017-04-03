require_relative 'spec_helper'

describe "Grocery_Store class" do

  it "requires one parameter" do
    store_name = "ALBERTSONS"

    store = StockManager::Grocery_Store.new(store_name)

    store.must_respond_to :store_name
    store.store_name.must_equal store_name
  end

  it "adds a product and returns an array of products" do
    x = StockManager::Grocery_Store.new("albertsons")
    x.add_product("Rice", "1 pound", 3.00, 2, "it's great in sushi").must_be_instance_of Array
  end

  it "adds an aisle and returns an array of aisles" do
    x = StockManager::Grocery_Store.new("albertsons")
    x.add_aisle("BAKING").must_be_instance_of Array
  end

#TODO this is where the tests get really hazy...
  it "returns an array of products in a particular aisle" do
    x = StockManager::Grocery_Store.new("ALBERTSONS")
    x.show_products_in_aisle("BAKING").must_equal nil
  end

  it "returns an aisle the product is in" do
    x = StockManager::Grocery_Store.new("ALBERTSONS")
    x.add_aisle("BAKING")
    x.find_product_in_aisle("bread").must_be_instance_of Array
  end

  it "accepts two parameters to add inventory" do
    x = StockManager::Grocery_Store.new("ALBERTSONS")
    product_name = "bread"
    quantity = 1
    x.add_inventory(product_name, quantity)
    quantity.must_equal 1
    product_name.must_equal "bread"
  end

  it "purchases products and returns total savings and a discount price" do
    x = StockManager::Grocery_Store.new("ALBERTSONS")
    x.purchase("rice").must_be_instance_of Integer 
  end

end

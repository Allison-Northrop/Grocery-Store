require_relative 'spec_helper'

describe "aisle class" do

  it "requires one parameter" do
    category = "BAKING"

    aisle = StockManager::Aisle.new(category)

    aisle.must_respond_to :category
    aisle.category.must_equal category
  end

  it "returns an array with all aisles" do
    aisles = StockManager::Aisle.all
    aisles.must_be_instance_of Array
  end


  it "finds an aisle and returns an array of products" do
    search = StockManager::Aisle.find("BAKING")
    search.must_be_instance_of Array
  end

  it "adds a new product to a product array" do
    a = StockManager::Aisle.new("baking")
    a.add_new_product("bread").must_be_instance_of Array 
  end


end

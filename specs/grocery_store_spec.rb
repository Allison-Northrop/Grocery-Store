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

end

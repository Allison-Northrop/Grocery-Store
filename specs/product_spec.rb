require_relative 'spec_helper'

describe "product class" do

  it "should create an instance of product" do
    new_product = StockManager::Product.new("Alfalfa", "9 pounds", 1.90, 1, "kind of like hay")
    new_product.must_be_instance_of Object 
  end



end

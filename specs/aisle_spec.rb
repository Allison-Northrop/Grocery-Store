require_relative 'spec_helper'

describe "aisle class" do

  it "requires one parameter" do
    category = "BAKING"

    aisle = StockManager::Aisle.new(category)

    aisle.must_respond_to :category
    aisle.category.must_equal category 
  end






end

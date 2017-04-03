require_relative 'spec_helper'

describe "product class" do

  it "requires 6 parameters for product class" do
    name = "ALFALFA"
    unit_size = "9 pounds"
    market_price = 1.90
    discount_price = 1
    description = "Hay!"

    new_product = StockManager::Product.new(name, unit_size, market_price, discount_price, description)

    new_product.must_respond_to :name
    new_product.name.must_equal name

    new_product.must_respond_to :unit_size
    new_product.unit_size.must_equal unit_size

    new_product.must_respond_to :market_price
    new_product.market_price.must_equal market_price

    new_product.must_respond_to :discount_price
    new_product.discount_price.must_equal discount_price

    new_product.must_respond_to :description
    new_product.description.must_equal description
  end

  it "returns an array of products" do
    all_products = StockManager::Product.all
    all_products.must_be_instance_of Array
  end

  it "returns a product object" do
    search = StockManager::Product.find(product_name)
    search.must_be_instance_of StockManager::Product


  end


end

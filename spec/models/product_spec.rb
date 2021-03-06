require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Product do
  before(:each) do
    @valid_attributes = {
      :title => "A dummy product",
      :price => 9.99,
      :description => "Dummy Description",
      :image_url => "dummy.jpg"
    }

    @invalid_attributes = {
      :title => "xxx",
      :price => -1,
      :description => "dummy",
      :image_url => "boo.sh"
    }
  end

  it "should create a new instance given valid attributes" do
    Product.create!(@valid_attributes)
  end

  it "should not save to the database given invalid attributes" do
    product = Product.create(@invalid_attributes)
    product.valid?.should be_false
    product.errors.on(:title).should_not be_nil
    product.errors.on(:price).should_not be_nil
    product.errors.on(:image_url).should_not be_nil
  end

  it "should not create products with duplicate titles" do
    2.times do
      product = Product.create(@valid_attributes)
      product.save
    end
 
    Product.count.should == 1
  end

  it "should find products for sale" do
    product = Product.create(@valid_attributes)
    product.save
    Product.find_products_for_sale.count.should == 1
  end
end

require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Order do
  before(:each) do
    @valid_attributes = {
      :cart_id => 1,
      :ip_address => "value for ip_address",
      :first_name => "value for first_name",
      :last_name => "value for last_name",
      :billing_address => "value for billing_address",
      :shipping_address => "value for shipping_address",
      :card_type => "value for card_type",
      :card_expires_on => Date.today
    }
  end

  it "should create a new instance given valid attributes" do
    Order.create!(@valid_attributes)
  end
end

require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe OrderController do

  #Delete these examples and add some real ones
  it "should use OrderController" do
    controller.should be_an_instance_of(OrderController)
  end


  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end
end

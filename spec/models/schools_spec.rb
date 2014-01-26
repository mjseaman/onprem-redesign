require File.dirname(__FILE__) + '/../spec_helper'

describe Schools do
  it "should be valid" do
    Schools.new.should be_valid
  end
end

require File.dirname(__FILE__) + '/../spec_helper'

describe Slide do
  it "should be valid" do
    Slide.new.should be_valid
  end
end

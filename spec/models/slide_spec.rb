# == Schema Information
#
# Table name: slides
#
#  id           :integer          not null, primary key
#  header       :string(255)
#  quote        :string(255)
#  author       :string(255)
#  author_title :string(255)
#  image        :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  page_id      :integer
#

require File.dirname(__FILE__) + '/../spec_helper'

describe Slide do
  it "should be valid" do
    Slide.new.should be_valid
  end
end

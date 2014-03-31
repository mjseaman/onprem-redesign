# == Schema Information
#
# Table name: industries
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Industry do
  it "should be valid" do
    Industry.new.should be_valid
  end

  it "should require a username" do
  	expect(build(:admin, email: nil)).not_to be_valid
  end
end

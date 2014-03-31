# == Schema Information
#
# Table name: pages
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  description   :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  display_name  :string(255)
#  display_order :integer
#

require 'spec_helper'

describe Page do
  it "should be valid" do
    expect(build :page).to be_a Page
  end
end

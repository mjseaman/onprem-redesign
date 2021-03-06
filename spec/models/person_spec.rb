# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  bio        :string(255)
#  linkedin   :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  title      :string(255)
#  phone      :string(255)
#  twitter    :string(255)
#  github     :string(255)
#  portrait   :string(255)
#

require File.dirname(__FILE__) + '/../spec_helper'

describe Person do

  it "should be valid" do
    expect(build :person).to be_a Person
  end
end

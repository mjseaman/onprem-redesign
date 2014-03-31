# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  title       :string(255)      not null
#  client      :string(255)
#  caption     :string(255)      not null
#  description :text             not null
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image       :string(255)
#  logo        :string(255)
#  industry_id :integer
#

require File.dirname(__FILE__) + '/../spec_helper'

describe Project do

  it "should be valid" do
    expect(build :project).to be_a Project
  end
end

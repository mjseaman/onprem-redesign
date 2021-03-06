# == Schema Information
#
# Table name: industries
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Industry < ActiveRecord::Base
  attr_accessible :name
  has_many :projects
end

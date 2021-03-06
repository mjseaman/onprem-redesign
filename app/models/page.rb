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

class Page < ActiveRecord::Base
  attr_accessible :description, :name, :display_name, :display_order
  has_many :slides
end

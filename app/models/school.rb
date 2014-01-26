# == Schema Information
#
# Table name: schools
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  icon       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class School < ActiveRecord::Base
  attr_accessible :name, :icon
  has_and_belongs_to_many :people
  mount_uploader :icon, ImageUploader
end

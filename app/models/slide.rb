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
#  page         :string(255)
#

class Slide < ActiveRecord::Base
  attr_accessible :header, :quote, :author, :author_title, :image
  mount_uploader :image, ImageUploader
end

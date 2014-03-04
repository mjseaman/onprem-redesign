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

class Slide < ActiveRecord::Base
  attr_accessible :header, :quote, :author, :author_title, :image, :page_id
  belongs_to :page
  mount_uploader :image, SlideUploader
end

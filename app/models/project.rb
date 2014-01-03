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
#

class Project < ActiveRecord::Base
  attr_accessible :title, :client, :caption, :description, :image_url, :image, :remote_image_url, :logo, :logo_url, :industry, :industry_id
  belongs_to :industry
  mount_uploader :image, ImageUploader
  mount_uploader :logo, ImageUploader
end

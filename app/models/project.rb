class Project < ActiveRecord::Base
  attr_accessible :title, :client, :caption, :description, :image_url, :image, :remote_image_url, :logo, :logo_url
  mount_uploader :image, ImageUploader
  mount_uploader :logo, ImageUploader
end

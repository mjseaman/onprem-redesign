class Project < ActiveRecord::Base
  attr_accessible :title, :client, :client_logo_url, :caption, :description, :image_url, :image, :remote_image_url
  mount_uploader :image, ImageUploader
end

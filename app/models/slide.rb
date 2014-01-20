class Slide < ActiveRecord::Base
  attr_accessible :header, :quote, :author, :author_title, :image
end

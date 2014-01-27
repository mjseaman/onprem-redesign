# == Schema Information
#
# Table name: people
#
#  id             :integer          not null, primary key
#  first_name     :string(255)
#  last_name      :string(255)
#  bio            :string(255)
#  alma_mater     :string(255)
#  linkedin       :string(255)
#  email          :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  title          :string(255)
#  phone          :string(255)
#  twitter_handle :string(255)
#  github         :string(255)
#

class Person < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :bio, :linkedin, :email, :title, :school_ids, :phone, :twitter, :github
  has_and_belongs_to_many :schools

  validates :github, format: { with: /\Ahttps:\/\/github.com\//, message: "must be formatted as a URL starting with the text 'https://github.com/' followed by your username", allow_blank: true }
  validates :twitter, format: { with: /\Ahttps:\/\/twitter.com\//, message: "must be formatted as a URL starting with the text 'https://twitter.com/' followed by your username", allow_blank: true }
  validates :linkedin, format: { with: /\/www.linkedin.com\//, message: "must be formatted as a URL with the text 'www.linkedin.com/' followed by your personal URL", allow_blank: true }
  validates :email, presence:true, format: { with: /\w*@\w*\./, message: "must be a valid email address"}

  include Gravtastic
  gravtastic :secure => true, :size => 120

  def self.uniques(field)
  	self.uniq.pluck(field).delete_if{|x| x == ""}
  end

  def school_choices
  	School.find(:all, :order => "name ASC")
  end

  def filter_tags
  	filters = []
  	filters << schools.map {|school| school.name.parameterize }
  	filters << title.parameterize
  	ap filters.flatten.join " "
  end
end

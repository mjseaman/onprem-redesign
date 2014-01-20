# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  bio        :string(255)
#  alma_mater :string(255)
#  linkedin   :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  title      :string(255)
#

class Person < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :bio, :alma_mater, :linkedin, :email
  include Gravtastic
  gravtastic :secure => true, :size => 120

  def self.uniques(field)
  	self.uniq.pluck(field).delete_if{|x| x == ""}
  end
end

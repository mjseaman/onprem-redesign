class Person < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :bio, :alma_mater, :linkedin, :email
  include Gravtastic
  gravtastic :secure => true, :size => 120

  def self.uniques(field)
  	self.uniq.pluck(field).delete_if{|x| x == ""}
  end
end

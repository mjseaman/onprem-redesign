class CreatePeopleSchools < ActiveRecord::Migration
  def change
  	create_table :people_schools do |t|
  		t.belongs_to :person
  		t.belongs_to :school
  	end
  end
end

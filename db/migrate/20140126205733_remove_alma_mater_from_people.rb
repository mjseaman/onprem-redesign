class RemoveAlmaMaterFromPeople < ActiveRecord::Migration
  def change
  	remove_column :people, :alma_mater
  end
end

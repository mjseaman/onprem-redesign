class CreateRolesUsers < ActiveRecord::Migration
  def change
  	create_table :roles_users do |t|
  		t.belongs_to :user 
  		t.belongs_to :role
  	end
  end
end

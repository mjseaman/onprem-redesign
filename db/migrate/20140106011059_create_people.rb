class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :bio
      t.string :alma_mater
      t.string :linkedin
      t.string :email
      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end

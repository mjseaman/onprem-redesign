class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :title, null: false
      t.string :client
      t.string :client_logo_url
      t.string :caption, null: false
      t.text :description, null: false
      t.string :image_url
      t.belongs_to :user
      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end

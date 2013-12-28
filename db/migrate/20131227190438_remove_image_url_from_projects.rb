class RemoveImageUrlFromProjects < ActiveRecord::Migration
  def up
  	remove_column :projects, :image_url
  end

  def down
  	add_column :projects, :image_url, :string
  end
end

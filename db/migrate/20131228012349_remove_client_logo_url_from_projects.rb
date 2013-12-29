class RemoveClientLogoUrlFromProjects < ActiveRecord::Migration
  def up
  	remove_column :projects, :client_logo_url
  end

  def down
  	add_column :projects, :client_logo_url, :string
  end
end

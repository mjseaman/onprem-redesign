class RemovePageFromSlides < ActiveRecord::Migration
  def up
    remove_column :slides, :page
  end

  def down
    add_column :slides, :page, :string
  end
end

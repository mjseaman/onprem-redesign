class AddPageIdToSlides < ActiveRecord::Migration
  def change
    add_column :slides, :page_id, :integer
  end
end

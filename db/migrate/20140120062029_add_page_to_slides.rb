class AddPageToSlides < ActiveRecord::Migration
  def change
    add_column :slides, :page, :string
  end
end

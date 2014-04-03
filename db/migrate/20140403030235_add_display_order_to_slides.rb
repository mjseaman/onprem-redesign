class AddDisplayOrderToSlides < ActiveRecord::Migration
  def change
    add_column :slides, :display_order, :integer
  end
end

class AddDisplayOrderToPages < ActiveRecord::Migration
  def change
    add_column :pages, :display_order, :integer
  end
end

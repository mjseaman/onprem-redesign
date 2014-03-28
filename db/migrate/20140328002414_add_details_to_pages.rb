class AddDetailsToPages < ActiveRecord::Migration
  def change
    add_column :pages, :display_name, :string
  end
end

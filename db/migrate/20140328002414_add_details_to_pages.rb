class AddDetailsToPages < ActiveRecord::Migration
  def change
    add_column :pages, :description, :string,
    add_column :pages, :image, :string
  end
end

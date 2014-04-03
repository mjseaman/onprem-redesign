class AddPublishFlagToProject < ActiveRecord::Migration
  def change
    add_column :projects, :publish, :boolean, default: true
  end
end

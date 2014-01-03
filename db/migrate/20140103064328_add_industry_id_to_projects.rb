class AddIndustryIdToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :industry_id, :integer
  end
end

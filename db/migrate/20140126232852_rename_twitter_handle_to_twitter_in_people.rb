class RenameTwitterHandleToTwitterInPeople < ActiveRecord::Migration
  def change
  	rename_column :people, :twitter_handle, :twitter
  end
end

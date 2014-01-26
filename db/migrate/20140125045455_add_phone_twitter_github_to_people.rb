class AddPhoneTwitterGithubToPeople < ActiveRecord::Migration
  def change
    add_column :people, :phone, :string
    add_column :people, :twitter_handle, :string
    add_column :people, :github, :string
  end
end

class CreateSlides < ActiveRecord::Migration
  def self.up
    create_table :slides do |t|
      t.string :header
      t.string :quote
      t.string :author
      t.string :author_title
      t.string :image
      t.timestamps
    end
  end

  def self.down
    drop_table :slides
  end
end

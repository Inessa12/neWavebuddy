class CreateGenres < ActiveRecord::Migration
  def self.up
    create_table :genres do |t|
      t.string  :name , :limit => 50
      t.string  :description, :limit => 200 , :default => ""

      t.timestamps
    end
  end

  def self.down
     drop_table :genres
  end
end

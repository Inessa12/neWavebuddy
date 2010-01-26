class AddNameDescriptionToCategory < ActiveRecord::Migration
  def self.up
    add_column :categories,:name,:string,:max =>80
    add_column :categories,:description,:string, :max => 200
  end

  def self.down
    remove_column :categories,:name
    remove_column :categories,:descriptiotn
  end
end

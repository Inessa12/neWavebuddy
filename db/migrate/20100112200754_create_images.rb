class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images , :force => true do |t|

      t.references :item
      t.string   :image_file_name
      t.string   :image_content_type
      t.integer :image_file_size
    end

    add_index :images, :item_id
    
  end

  def self.down
    drop_table :images
  end
end

class CreateItems < ActiveRecord::Migration
  def self.up
     create_table "items", :force => true do |t|
      t.column :album_name ,                    :string, :limit => 100 ,:default => ''
      t.column :artist_name,                       :string, :limit => 100, :default => ''
      t.column :year,                                     :date
      t.column  :speed   ,                              :tinyint
      t.column  :size ,                                    :string,:limit => 10
      t.column :duration ,                            :tinyint
      t.column :catalog_id  ,                         :int   
      t.column :description ,                        :string, :limit => 200, :default  => ""
      t.column :location,                               :string , :limit => 50 , :default  => ""
      t.column :category_id ,                         :int
      t.column :genre_id ,                              :int
      t.column :created_at,                :datetime
      t.column :updated_at,                :datetime
      end
  end

  def self.down
    drop_table "items"
  end
end

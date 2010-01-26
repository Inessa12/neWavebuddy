class Category < ActiveRecord::Base
  
  validates_uniqueness_of :name
  #has_and_belongs_to_many :items
  has_many  :items 

 
end


class Collection
  
  attr_reader     :items
	

  def self.add_item params , year
       @item = Item.new(params)       
       @item .set_year year
       @item .save
       return @item 
  end

 def self.items_list letter = 'A', page = '1'
       Item.all.paginate( :per_page => '5' , :page => page )
 end


end

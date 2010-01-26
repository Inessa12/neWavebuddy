class Item < ActiveRecord::Base
   #validation

    validates_presence_of  :artist_name , :album_name    
  
    belongs_to :category
    belongs_to  :genre
    has_many    :images
    accepts_nested_attributes_for :images, :allow_destroy => true
    
    before_save :capitilize_names


  def  set_year  input_year
    self.year = DateTime.strptime(input_year,"%Y")
  end

   def default_image(size)
    if self.images.empty? || ( !self.images.first.image.exists?)
      return "/images/music.png"
    else
      return self.images.first.image.url(size)
    end
  end

  private
  def  capitilize_names
    self.artist_name  = self.artist_name.capitalize
    self.album_name = self.album_name.capitalize
  end


end

class Image < ActiveRecord::Base

   belongs_to :item

  
   has_attached_file :image,
                    :whiny => true,                    
                    :path_prefix => 'public/images/collection', # may have to comment this out when using S3
                    :max_size => 4096.kilobytes,
                    :styles => { :thumb => "50x50#",
                                          :small => "100x100#",
                                          :medium => "390x390#" },
                                           :default_url => "/images/music.png"



end

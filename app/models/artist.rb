$maxwidthheightratio = 1.7
$maxheightwidthratio = 3

class Artist < ApplicationRecord
    has_many :comments
    validates :name, :image_url, presence: true
    validate :checkImage
    def checkImage
        if(FastImage.type(image_url)==nil)  
            errors.add(:image_url," is not an image")
            return
        end
        width=FastImage.size(image_url)[0]
        height=FastImage.size(image_url)[1]
        if(width>$maxwidthheightratio*height) 
            errors.add(:image_width, "is too much higher than Height") 
            return
        end
        if(height>$maxheightwidthratio*width) 
            errors.add(:image_height, "is too much higher than Width") 
            return
        end
    end
end


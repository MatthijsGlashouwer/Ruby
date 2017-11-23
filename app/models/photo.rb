class Photo < ApplicationRecord
  #Mounts paperclip image
  has_attached_file :image, :styles => { :thumb => ['300x300#', :png] } 
  #This validates the type of file uploaded. According to this, only images are allowed.
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/	
end

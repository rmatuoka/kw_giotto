class ProductImage < ActiveRecord::Base
  #attr_accessible :active, :published
  belongs_to :product
  has_attached_file:image, :styles =>{:thumb => "194x142>",:rotative => "250x390>"}
end

class ProductCatalog < ActiveRecord::Base
  belongs_to :category
  #attr_accessible :link, :active, :published
end

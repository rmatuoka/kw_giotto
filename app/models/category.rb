class Category < ActiveRecord::Base
  attr_accessible :title, :published, :active
  has_many :products
  has_many :product_catalogs
end

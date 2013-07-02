class Product < ActiveRecord::Base
  attr_accessible :code, :name, :ean, :dun, :weight, :total_weight, :cubage, :amount, :dimensions, :color, :published, :active, :category_id, :novelty, :description, :order, :litre
  belongs_to :category
  has_many :product_images
end

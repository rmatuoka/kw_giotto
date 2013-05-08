class ReleasesController < ApplicationController
  layout "template2013"
  before_filter :new_contact
  def index
    @products = Product.where(:novelty => true)
    @categories = Category.all
  end
  
  def show_product
    @product = Product.find_by_id(params[:id])
    @product_images = @product.product_images
  end

end

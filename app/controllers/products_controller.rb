class ProductsController < ApplicationController
layout "template2013"
before_filter :new_contact 
  def index
    @categories = Category.all
  end
  
  def show_category
    @category = Category.find_by_id(params[:id])
    @products = Product.all(:joins=>"LEFT JOIN `product_images` ON `product_images`.`product_id` = `products`.`id`", :conditions => ["products.category_id=?",@category.id])
  end
  
  def show_product
    @product = Product.find_by_id(params[:id])
    @product_images = @product.product_images.all
  end
  
  def show
    @categories = Category.all
    @category_id = Category.find_by_id(params[:id])
    if !@category_id.blank?
      render :index
    else 
      redirect_to products_path
    end
    
  end

end

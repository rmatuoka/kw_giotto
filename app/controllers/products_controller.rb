class ProductsController < ApplicationController
layout "template2013"
before_filter :new_contact 
  def index
    @categories = Category.all
  end
  
  def show_category
    @category = Category.find_by_id(params[:id])
    @products = @category.products.order("`order` ASC")
  end
  
  def show_product
    @product = Product.find_by_id(params[:id])
    @category = Category.find_by_id(@product.category_id)
    @products = @category.products.order("`order` ASC")
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

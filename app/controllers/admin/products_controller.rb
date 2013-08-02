class Admin::ProductsController < ApplicationController
  access_control do
      allow :admin, :all
  end
  layout "inadmin"
  before_filter :load_category
  respond_to :html, :xml
  def index
    @products = @category.products.all
    respond_with(@products)
  end

  def show
    @product = @category.products.find(params[:id])
  end

  def new
    @product = @category.products.build(:order => "10")
  end

  def create
    @product = @category.products.build(params[:product])
    if @product.save
      redirect_to admin_category_product_path(@category,@product), :notice => "Successfully created product."
    else
      render :action => 'new'
    end
  end

  def edit
    @product = @category.products.find(params[:id])
  end

  def update
    @product = @category.products.find(params[:id])
    if @product.update_attributes(params[:product])
      redirect_to admin_category_product_path(@category,@product), :notice  => "Successfully updated product."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @product = @category.products.find(params[:id])
    @product.destroy
    redirect_to admin_category_products_path(@category), :notice => "Successfully destroyed product."
  end
  
  def load_category
    @category = Category.find(params[:category_id])
  end
end

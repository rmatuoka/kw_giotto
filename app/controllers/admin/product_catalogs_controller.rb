class Admin::ProductCatalogsController < ApplicationController
  access_control do
      allow :admin, :all
  end  
  layout "inadmin"
  before_filter :load_category
  def index
    @product_catalogs = @category.product_catalogs.all
  end

  def show
    @product_catalog = @category.product_catalogs.find(params[:id])
  end

  def new
    @product_catalog = @category.product_catalogs.build
  end

  def create
    @product_catalog = @category.product_catalogs.build(params[:product_catalog])
    if @product_catalog.save
      redirect_to admin_category_product_catalog_path(@category,@product_catalog), :notice => "Successfully created product catalog."
    else
      render :action => 'new'
    end
  end

  def edit
    @product_catalog = @category.product_catalogs.find(params[:id])
  end

  def update
    @product_catalog = @category.product_catalogs.find(params[:id])
    if @product_catalog.update_attributes(params[:product_catalog])
      redirect_to admin_category_product_catalog_path(@category,@product_catalog), :notice  => "Successfully updated product catalog."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @product_catalog = @category.product_catalog.find(params[:id])
    @product_catalog.destroy
    redirect_to admin_category_product_catalogs_path(@category), :notice => "Successfully destroyed product catalog."
  end
  
  def load_category
    @category = Category.find(params[:category_id])
  end
end

class Admin::AboutImagesController < ApplicationController
  access_control do
      allow :admin, :all
  end  
  layout "inadmin"
  def index
    @about_images = AboutImage.all
  end

  def show
    @about_image = AboutImage.find(params[:id])
  end

  def new
    @about_image = AboutImage.new
  end

  def create
    @about_image = AboutImage.new(params[:about_image])
    if @about_image.save
      redirect_to [:admin, @about_image], :notice => "Successfully created about image."
    else
      render :action => 'new'
    end
  end

  def edit
    @about_image = AboutImage.find(params[:id])
  end

  def update
    @about_image = AboutImage.find(params[:id])
    if @about_image.update_attributes(params[:about_image])
      redirect_to [:admin, @about_image], :notice  => "Successfully updated about image."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @about_image = AboutImage.find(params[:id])
    @about_image.destroy
    redirect_to admin_about_images_url, :notice => "Successfully destroyed about image."
  end
end

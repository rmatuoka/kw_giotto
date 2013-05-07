class AboutUsController < ApplicationController
layout "template2013" 
  def index
    @categories = Category.all
  end

end

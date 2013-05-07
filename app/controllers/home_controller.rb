class HomeController < ApplicationController
layout "template2013"  
  def index
    @categories = Category.all
  end
  
  def new
    @contact = Contact.new
  end
      
end

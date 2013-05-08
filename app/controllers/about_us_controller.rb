class AboutUsController < ApplicationController
layout "template2013"
before_filter :new_contact 
  def index
    @categories = Category.all
  end

end

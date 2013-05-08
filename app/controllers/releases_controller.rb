class ReleasesController < ApplicationController
  layout "template2013"
  before_filter :new_contact
  def index
    @releases = Product.where(:novelty => true)
    @categories = Category.all
  end

end

class ReleasesController < ApplicationController
  layout "template2013"
  def index
    @releases = Product.where(:novelty => true)
  end

end

class RepresentativesController < ApplicationController
layout  "template2013"

  def index
    redirect_to new_representatives_path
  end
  def new
  end

  def show
  end

end

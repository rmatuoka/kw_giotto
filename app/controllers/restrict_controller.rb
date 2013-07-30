class RestrictController < ApplicationController
  layout "template2013"
  before_filter :new_contact
  def index
    @categories = Category.all
    @category = Category.find_by_id(params[:id])
    @catalogs = ProductCatalog.all
  end
end

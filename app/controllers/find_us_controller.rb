class FindUsController < ApplicationController
  layout "template2013"
  before_filter :new_contact
  def index
    redirect_to new_find_u_path
  end
  
  def new
    @find = ::Find.new
    @categories = Category.all
  end
  
  def create
    @findcontact = ::Find.new(params[:post])
    if @findcontact.save
      ContactMailer.send_findus_to_adm(@findcontact).deliver
      redirect_to find_u_path(@findcontact), :notice => "Mensagem de sucesso."
  
  else
    render :action => 'new'
  end
  end

  def show
    @categories = Category.all
  end

end

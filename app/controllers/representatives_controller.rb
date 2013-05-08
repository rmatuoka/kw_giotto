class RepresentativesController < ApplicationController
layout  "template2013"
before_filter :new_contact
  def index
    redirect_to new_representative_path
  end
  def new
    @representative = Representative.new
    @categories = Category.all
  end
  
  def create
    @contact = Representative.new(params[:representative])
    if @contact.save
      ContactMailer.send_representative_to_adm(@contact).deliver
      redirect_to representative_path(@contact), :notice => "Mensagem de sucesso."
  
  else
    render :action => 'new'
  end
  end

  def show
    @categories = Category.all
  end

end

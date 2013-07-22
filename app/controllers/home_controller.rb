class HomeController < ApplicationController
layout "template2013"
before_filter :new_contact 
  def index
    @categories = Category.all
  end
  
  def new
    @contact = Contact.new
  end
  
  def create
    #@erro = true
    @contact = Contact.new(params[:contact])
    @contact.contact = true
    if @contact.save
      ContactMailer.send_contact_to_adm(@contact).deliver
    #@erro = false
    end
  end
  
  def work
    @erro = true
    @contact = Contact.new(params[:contact])
    @contact.contact = false
    if @contact.save
      ContactMailer.send_work_to_adm(@contact).deliver
    @erro = false
    end
  end

      
end

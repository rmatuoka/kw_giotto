class HomeController < ApplicationController
layout "template2013"  
  def index
    
  end
  
  def new
    @contact = Contact.new
  end
  
  def contact
    @contact = Contact.new(params[:contact])
    if @contact.save
      Notifier.send_contact_to_adm(@contact).deliver
      Notifier.send_contact_to_user(@contact).deliver
      redirect_to [@contact], :notice => "Successfully created contact."
    else
      render :action => 'index'
    end
  end
  
end

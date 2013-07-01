class WorksController < ApplicationController
  layout "templatework"
  def index
    @contact = Contact.new
  end
  
  def new_contact
    @contact = Contact.new
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

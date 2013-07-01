class ContactMailer < ActionMailer::Base
  default :from => "Produtos Giotto <contato@giotto.com.br>"
  
  def send_representative_to_adm(contact)
    @contact = contact
    mail(:to => "bsouza@korewa.com.br",:bcc => "log@korewa.com.br", :subject => "Giotto - Novo Contato")
  end
  
  def send_contact_to_adm(contact)
    @contact = contact
    mail(:to => "bsouza@korewa.com.br",:bcc => "log@korewa.com.br", :subject => "Giotto - Novo Contato")
  end
  
  def send_findus_to_adm(contact)
    @contact = contact
    mail(:to => "bsouza@korewa.com.br",:bcc => "log@korewa.com.br", :subject => "Giotto - Novo Contato")
  end
  
  def send_work_to_adm(contact)
    @contact = contact
    mail(:to => "bsouza@korewa.com.br",:bcc => "bsouza@korewa.com.br", :subject => "Giotto - Novo CV")
  end
end

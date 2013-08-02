class ContactMailer < ActionMailer::Base
  default :from => "Produtos Giotto <log@korewa.com.br>"
  
  def send_representative_to_adm(contact)
    @contact = contact
    mail(:to => "comercial@produtosgiotto.com.br",:bcc => "log@korewa.com.br", :subject => "Giotto - Representante")
  end
  
  def send_contact_to_adm(contact)
    @contact = contact
    mail(:to => "comercial@produtosgiotto.com.br",:bcc => "log@korewa.com.br", :subject => "Giotto - Contato")
  end
  
  def send_findus_to_adm(contact)
    @contact = contact
    mail(:to => "comercial@produtosgiotto.com.br",:bcc => "log@korewa.com.br", :subject => "Giotto - Onde Encontrar")
  end
  
  def send_work_to_adm(contact)
    @contact = contact
    mail(:to => "vagner@produtosgiotto.com.br",:bcc => "bsouza@korewa.com.br", :subject => "Giotto - Trabalhe Conosco")
  end
end

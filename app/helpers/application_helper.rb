module ApplicationHelper
  def print_active(status)
    retorno = ''
    if status
      retorno = 'sim'
    else
      retorno = 'não'
    end
    return retorno
  end
  
  def language_links
    links = []
    I18n.available_locales.each do |locale|
      locale_key = "translation.#{locale}"
      if locale == I18n.locale
        links << link_to(I18n.t(locale_key), "#", :class => "button disabled")
      else
        links << link_to(I18n.t(locale_key), url_for(:locale => locale.to_s), :class => "button")
      end
    end
    links.join("\n").html_safe
  end
end

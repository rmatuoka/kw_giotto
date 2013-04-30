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
end

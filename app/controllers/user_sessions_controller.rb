class UserSessionsController < ApplicationController
  before_filter :navegadorie6
  layout "login"
  def new
    @user_session = UserSession.new
  end
 
  def create
    @user_session = UserSession.new(params[:user_session])
    @user_session.save do |login|
      if login
     flash[:error] = "Login realizado com sucesso"
     redirect_to :controller => 'home', :action => 'index', :target => '_blank'
      end
    end
    else
      flash[:error] = "UsuÃ¡rio e/ou senha invÃ¡lidos!"
    end
  end
 
  def destroy
    @user_session = UserSession.find
    @user_session.destroy
    flash[:notice] = "SessÃ£o finalizada com sucesso."
    redirect_to root_url
  end


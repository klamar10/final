class SessionsController < ApplicationController
include SessionsHelper
def new
  end

def create
    user = User.find_by(email: params[:session][:email].downcase, password: params[:session][:password])
    if user
      log_in user
      redirect_to :controller => 'home', :action => 'inicio'
    else
      flash[:danger] = 'Correo o contraseña invalidos'
      render 'new'
    end
  end




  def destroy
    log_out if logged_in?
    redirect_to :root
  end



end

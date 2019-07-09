class SessionsController < ApplicationController
include SessionsHelper
def new
  end

  def create
    user = User.find_by(email: params[:sesion][:email].downcase, password: params[:sesion][:password])
    if user
      # Si existe
      log_in user
      redirect_to :root
    else
      # Si no existe
      flash[:danger] = 'Error de cuenta'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to :root
  end
 end

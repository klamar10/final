class HomeController < ApplicationController
  def inicio
  @q = params[:q]
  if 
@q    
@posts = Departamento.where(:tipo => @q)
redirect_to :departamentos
  else
    
@posts = Departamento.all
   end
end
end

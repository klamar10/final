class HomeController < ApplicationController
  def inicio
  @q = params[:q]
  if 
@q    
@posts = Departamento.where(:tipo => @q)
  else
@posts = Departamento.all
   end
end
end

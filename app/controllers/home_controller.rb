class HomeController < ApplicationController
  def inicio
  @q = params[:q]
  @d = params 
  if 
@q    
@posts = Departamento.where(:tipo => @q)
render
  else
@posts = Departamento.all
   end
end
end

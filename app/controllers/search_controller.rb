class SearchController < ApplicationController
  def create
  @q = params[:q]
  if 
@q
    
@posts = Departamento.where(:tipo like @q)
  else
    
@posts = Departamento.all

end

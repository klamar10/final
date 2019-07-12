class SearchController < ApplicationController
  def create
  	palabra = params[:keyword]
  	@products = Departamento.where("tipo like ?", palabra)
 	respond_to do |format|
 		format.html { redirect_to root_path}
 		format.json { render json: @products}
 		format.js
  end
end
end

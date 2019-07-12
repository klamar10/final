class ExtraController < ApplicationController
  def cotizacion
  	@coti = Proyecto.all
  end
  def detalle
  	@detalle = Departamento.where(:estado => "Disponible")
  end
   private
    # Use callbacks to share common setup or constraints between actions.
    def set_proyecto
      @coti = Proyecto.find(params[:id])
     
    end
end

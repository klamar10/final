class ExtraController < ApplicationController
  def cotizacion
  	@coti = Proyecto.all
  end
  def detalle
    @proyectos = Proyecto.all
  	@detalle = Departamento.where(:tipo => "flat")
  	@detalle = Departamento.where(:estado => "Disponible")
  	@detalle = Departamento.where(:estado => "Disponible")
  end
   private
    # Use callbacks to share common setup or constraints between actions.
    def set_proyecto
      @coti = Proyecto.find(params[:id])
     
    end
end

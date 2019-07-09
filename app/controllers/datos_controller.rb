class DatosController < ApplicationController
  def personales
  	@depart =Departamento.all
  end

end

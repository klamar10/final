class DatosController < ApplicationController
  def personales
  	@depart =User.all
  end

end

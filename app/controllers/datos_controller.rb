class DatosController < ApplicationController
  def personales
  	@adrian = users.all
  end

end

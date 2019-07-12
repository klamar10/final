class ProyectosController < ApplicationController
  before_action :set_proyecto, only: [:show, :edit, :update, :destroy]

  # GET /proyectos
  # GET /proyectos.json
  def index
    @proyectos = Proyecto.all
  end

  # GET /proyectos/1
  # GET /proyectos/1.json
  def show
  end

  # GET /proyectos/new
  def new
    @months = ["Miraflores", "Barranco", "Surco" ]
    @proyecto = Proyecto.new
  end

  # GET /proyectos/1/edit
  def edit
    @months = ["Miraflores", "Barranco", "Surco" ]
  end

  # POST /proyectos
  # POST /proyectos.json
  def create
    puts proyecto_params
    puts '---------'
    @proyecto = Proyecto.new(proyecto_params)

    respond_to do |format|
      if @proyecto.save
        format.html { redirect_to @proyecto, notice: 'Proyecto registrado correctamente' }
        format.json { render :show, status: :created, location: @proyecto }
      else
        format.html { render :new }
        format.json { render json: @proyecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proyectos/1
  # PATCH/PUT /proyectos/1.json
  def update
    respond_to do |format|
      if @proyecto.update(proyecto_params)
        format.html { redirect_to @proyecto, notice: 'Proyecto actualizado correctamente' }
        format.json { render :show, status: :ok, location: @proyecto }
      else
        format.html { render :edit }
        format.json { render json: @proyecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proyectos/1
  # DELETE /proyectos/1.json
  def destroy
    @proyecto.destroy
    respond_to do |format|
      format.html { redirect_to proyectos_url, notice: 'Proyecto eliminado correctamente' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proyecto
      @proyecto = Proyecto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proyecto_params
      params.require(:proyecto).permit(:nombre, :caracteristica, :areacomun, :pisos, :ubicacion, :precio, :foto_file_name,)
    end
end

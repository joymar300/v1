class Areas::CursosController < ApplicationController
before_action :set_area 

  def index
    @cursos = @area.cursos
  end
  def show
    @curso = @area.cursos.find(params[:id])
  end
  def new
    @curso = @area.cursos.new
  
  end

  def create
    @curso = @area.cursos.new(curso_params)
    if @curso.save 
      redirect_to area_cursos_url
    else
      render :new
    end
  end

  def destroy
    @curso = @area.cursos.find(params[:id])
    if @curso.destroy
      flash[:notice] = "Proceso ok"
      redirect_to area_cursos_url
    else
      flash[:alert] = "No se pudo borrar"
      
    end
  end

  def edit
    @curso = @area.cursos.find(params[:id])
  end


  def update
    @curso = @area.cursos.find(params[:id])
    if @curso.update(curso_params_update)
      redirect_to area_cursos_url
    else
        render :edit
    end
  end
  
  private
  
    def set_area
      @area = Area.find(params[:area_id])
    end


    def curso_params
      params.require(:curso).permit(:nombre_curso, ficha_ids: [])
    end
    
    def curso_params_update
      params.require(:curso).permit(:nombre_curso)    
    end
  end

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
  private 
    def set_area
      @area = Area.find(params[:area_id])
    end
    
    def curso_params
      params.require(:curso).permit(:nombre_curso)
    end
    
    def curso_params_update
      params.require(:curso).permit(:nombre_curso)    
    end
  end

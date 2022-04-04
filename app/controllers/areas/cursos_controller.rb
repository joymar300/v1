class Areas::CursosController < ApplicationController
before_action :set_area 
before_action :delet_area
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
    @curso = @aread.cursos.find(params[:id]).destroy
    redirect_to areas_path
  end

  def edit
    @curso = @area.cursos.find(params[:id])
  end


  def update
    @curso = @area.cursos.find(params[:id])
    if @area.update(curso_params_update)
      redirect_to areas_cursos_path
    else
        render :edit
    end
  end
  
  private
  
    def set_area
      @area = Area.find(params[:area_id])
    end

    def delet_area
      @aread = Area.where({:area_id => params[:area_id]})
    end
    def curso_params
      params.require(:curso).permit(:nombre_curso)
    end
    
    def curso_params_update
      params.require(:curso).permit(:nombre_curso)    
    end
  end

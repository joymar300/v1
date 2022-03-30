class AreasController < ApplicationController
  def index
    @areas = Area.all
  end
  def show
    @area = Area.find(params[:id])
  end
  
  def new
    @area = Area.new
  end

  def create
    @area = Area.new(area_params)
    if @area.save 
      redirect_to areas_path
    else
      render :new
    end
  end

  def update
    @area = Area.find(params[:id])
    if @area.update(area_params_update)
      redirect_to areas_path
    else
        render :edit
    end
  end

  def destroy
    @area = Area.find(params[:id]).destroy
    redirect_to areas_path

  end

  private

    def area_params_update
      params.require(:area).permit(:nombre)
    end

    def area_params
      params.require(:area).permit(:nombre)
    end
end



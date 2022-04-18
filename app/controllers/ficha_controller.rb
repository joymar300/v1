class FichaController < ApplicationController
  def index
    @fichas = Ficha.all
  end
  def new
    @ficha = Ficha.new
  end

  def create
      @ficha = Ficha.create(params_ficha)
        
      if @ficha.save 
          redirect_to fichas_path
      else 
          render :new 
      end
  end

  def edit
      @ficha = Ficha.find(params[:id])

  end

  def update
      @ficha =  Ficha.find(params[:id])
      @ficha.update(params_ficha)
      
      redirect_to ficha_path(@ficha.id)

  end


  def show
      @ficha = Ficha.find(params[:id])
  end

  def destroy
      @ficha = Ficha.find(params[:id])
      @ficha.destroy
      redirect_to fichas_path

    
  end


  private

  def ficha_params
    params.require(:ficha).permit(:num_ficha)
  end

end

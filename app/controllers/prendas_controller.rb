class PrendasController < ApplicationController
  
  skip_forgery_protection

  def index
    @prendas = Prenda.all
  end

  def show
    @prenda = Prenda.find(params[:id])
  end

  def create
    Prenda.create! prenda_params
    
    if Prenda.last.color_p == Prenda.last.color_s
      Prenda.last.update({:color_s => ""})
    end
    redirect_to action: :index
  end

  def new
    @prenda = Prenda.new
  end

  def update
    @prenda = Prenda.find(params[:id])
    @prenda.update! prenda_params
    if @prenda.color_p == @prenda.color_s
      @prenda.update({:color_s => ""})
    end
    redirect_to @prenda
  end

  def edit
    @prenda = Prenda.find(params[:id])
  end

  def destroy
    @prenda = Prenda.find(params[:id])
    @prenda.destroy
    redirect_to action: :index
  end

  private
  def prenda_params
    params.require(:prenda).permit(:tipo, :categoria, :tela, :color_p, :color_s, :link_imagen, :imagen)
  end
end

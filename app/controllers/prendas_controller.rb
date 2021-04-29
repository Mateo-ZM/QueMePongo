class PrendasController < ApplicationController
  
  def index
    @prendas = Prenda.all
  end

  def show
    @prendas = Prenda.find(params[:id])
  end

  def create
    Prenda.create! prenda_params
    redirect_to action: :index
  end

  def new
    @prenda = Prenda.new
  end

  def update
    @prenda = Prenda.find(params[:id])
    @prenda.update! prenda_params
    redirect_to @prenda
  end

  def edit
    @prenda = Prenda.find(params[:id])
  end

  private
  def prenda_params
    params.require(:prenda).permit(:tipo, :categoria)
  end
end

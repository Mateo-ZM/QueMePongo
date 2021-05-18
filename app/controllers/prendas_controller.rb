class PrendasController < ApplicationController
  
  skip_forgery_protection

  def index
    @prendas = Prenda.page(params[:page])
    @prendas.each do |prenda|
      prenda.comprobar_link_imagen!
    end
  end

  def show
    @prenda = Prenda.find(params[:id])
    if !@prenda.color_secundario.blank? 
      if !@prenda.mismo_color?
        @prenda.color_primario = @prenda.color_primario + " y " + @prenda.color_secundario
      end
    end
    @prenda.comprobar_link_imagen!
  end

  def create
    @prenda = Prenda.new prenda_params
    @prenda.comprobar_color_secundario
    @prenda.save
    redirect_to @prenda
  end

  def new
    @prenda = Prenda.new 
  end

  def update
    @prenda = Prenda.find(params[:id])
    @prenda.update! prenda_params
    @prenda.comprobar_color_secundario
    redirect_to @prenda
  end

  def edit
    @prenda = Prenda.find(params[:id])
    @prenda.comprobar_link_imagen!
  end

  def destroy
    @prenda = Prenda.find(params[:id])
    @prenda.destroy!
    redirect_to action: :index
  end

  private
  def prenda_params
    params.require(:prenda).permit(:tipo, :categoria, :tela, :color_primario, :color_secundario, :link_imagen, :imagen)
  end
end
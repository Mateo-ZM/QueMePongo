class PrendasController < ApplicationController
  
  skip_forgery_protection
  before_action :get_guardarropa

  def index
    @prendas = @guardarropa.prendas.order(:tipo)
    @prendas.each do |prenda|
      prenda.comprobar_link_imagen!
    end
  end

  def show
    @prenda = Prenda.find(params[:id])
    @hide = "visible"
    if @prenda.mismo_color?
      @hide = "hidden"
    end
    @prenda.comprobar_link_imagen!
  end

  def create
    @prenda = @guardarropa.prendas.build (prenda_params)
    @prenda.save!
    redirect_to guardarropa_prenda_path(@guardarropa,@prenda)
  end

  def new
    @prenda = @guardarropa.prendas.build
  end

  def update
    @prenda = Prenda.find(params[:id])
    @prenda.update! prenda_params
    redirect_to guardarropa_prenda_path(@guardarropa,@prenda)
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
    params.require(:prenda).permit(:tipo, :categoria, :tela, :color_primario, :color_secundario, :link_imagen, :imagen, :guardarropa_id)
  end

  def get_guardarropa
    @guardarropa = Guardarropa.find(params[:guardarropa_id])
  end
end
class PrendasController < ApplicationController
  
  skip_forgery_protection

  def index
    @prendas = Prenda.page(params[:page])
    
    @prendas.each do |prenda|
      if prenda.tipo != nil
        if prenda.tipo.length > 19
          prenda.tipo = prenda.tipo[0,19] + ' ...'
        else
          prenda.tipo
        end
      end

      if  prenda.imagen.attached?
        prenda.link_imagen = url_for(prenda.imagen)
      elsif prenda.vacia?
        prenda.link_imagen = "imagen_no_disponible.jpg"
      end
    end
  end

  def show
    @prenda = Prenda.find(params[:id])

    if !@prenda.color_secundario.blank? 
      if !@prenda.mismo_color?
        @prenda.color_primario = @prenda.color_primario + " y " + @prenda.color_secundario
      end
    end

    if  @prenda.imagen.attached?
      @prenda.link_imagen = url_for(@prenda.imagen)
    elsif @prenda.vacia?       
      @prenda.link_imagen = "imagen_no_disponible.jpg"
    end
  end

  def create
    @prenda = Prenda.new prenda_params

    if @prenda.mismo_color?
      @prenda.update({:color_secundario => ""})
    end

    @prenda.save
    
    redirect_to @prenda
  end

  def new
    @prenda = Prenda.new 
  end

  def update
    @prenda = Prenda.find(params[:id])
    @prenda.update! prenda_params

    if @prenda.mismo_color?
      @prenda.update({:color_secundario => ""})
    end

    redirect_to @prenda
  end

  def edit
    @prenda = Prenda.find(params[:id])

    if  @prenda.imagen.attached?
      @prenda.link_imagen = url_for(@prenda.imagen)
    elsif @prenda.vacia?
      @prenda.link_imagen = "imagen_no_disponible.jpg"
    end
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
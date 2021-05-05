class PrendasController < ApplicationController
  
  skip_forgery_protection

  def index
    @prendas = Prenda.all
    
    @prendas.each do |prenda|
      if prenda.tipo != nil
        if prenda.tipo.length > 25 
          prenda.tipo = prenda.tipo[0,25] + ' ...'
        else
          prenda.tipo
        end
      end

      if  prenda.imagen.attached?
        prenda.link_imagen = url_for(prenda.imagen)
      elsif !(prenda.link_imagen != nil &&  prenda.link_imagen != '' && ((prenda.link_imagen.include? "https://") || (prenda.link_imagen.include? "http://")) && ((prenda.link_imagen.include? ".jpg") || (prenda.link_imagen.include? ".jpeg") || (prenda.link_imagen.include? ".png") || (prenda.link_imagen.include? ".webp")))
        prenda.link_imagen = "imagen_no_disponible.jpg"
      end
    end
  end

  def show
    @prenda = Prenda.find(params[:id])

    if @prenda.color_s != '' && @prenda.color_s != nil
      if @prenda.color_s != @prenda.color_p
        @prenda.color_p = @prenda.color_p + " y " + @prenda.color_s
      end
    end

    if  @prenda.imagen.attached?
      @prenda.link_imagen = url_for(@prenda.imagen)
    elsif !(@prenda.link_imagen != nil &&  @prenda.link_imagen != '' && ((@prenda.link_imagen.include? "https://") || (@prenda.link_imagen.include? "http://")) && ((@prenda.link_imagen.include? ".jpg") || (@prenda.link_imagen.include? ".jpeg") || (@prenda.link_imagen.include? ".png") || (@prenda.link_imagen.include? ".webp")))       
      @prenda.link_imagen = "imagen_no_disponible.jpg"
    end
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

    if  @prenda.imagen.attached?
      @prenda.link_imagen = url_for(@prenda.imagen)
    elsif !(@prenda.link_imagen != nil &&  @prenda.link_imagen != '' && ((@prenda.link_imagen.include? "https://") || (@prenda.link_imagen.include? "http://")) && ((@prenda.link_imagen.include? ".jpg") || (@prenda.link_imagen.include? ".jpeg") || (@prenda.link_imagen.include? ".png") || (@prenda.link_imagen.include? ".webp")))
      @prenda.link_imagen = "imagen_no_disponible.jpg"
    end
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
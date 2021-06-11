class AtuendosController < ApplicationController
    
    skip_forgery_protection
    before_action :get_guardarropa


    def index
        @atuendos = @guardarropa.atuendos.order(:Descripcion)

        @atuendos.each do |atuendo|
            if !(atuendo.prenda_torso && atuendo.prenda_accesorios && atuendo.prenda_piernas && atuendo.prenda_pies)
                @atuendos.destroy(atuendo.id)
                atuendo.destroy!
            end
        end
        
    end

    def show
        @atuendo = Atuendo.find(params[:id])
        @atuendo.comprobar_text_overflow
    end

    def create
        @atuendo = @guardarropa.atuendos.build (atuendo_params)
        @atuendo.save
        redirect_to guardarropa_atuendos_path(@guardarropa)
    end

    def new
        @atuendo = @guardarropa.atuendos.build
        @i = 0

        @prendas_torso = @guardarropa.prendas.select{|p| p.categoria == "Torso"}
        @prenda_torso = @prendas_torso[rand(@prendas_torso.length)].id
        @conversion_torso = Array.new

        @prendas_torso.each do |prenda|
            @conversion_torso[@i] = [prenda.tipo,prenda.id]
            @i+=1
        end

        @i=0

        @prendas_piernas = @guardarropa.prendas.select{|p| p.categoria == "Piernas"}
        @prenda_piernas = @prendas_piernas[rand(@prendas_piernas.length)].id
        @conversion_piernas = Array.new

        @prendas_piernas.each do |prenda|
            @conversion_piernas[@i] = [prenda.tipo,prenda.id]
            @i+=1
        end

        @i=0

        @prendas_pies = @guardarropa.prendas.select{|p| p.categoria == "Pies"}
        @prenda_pies = @prendas_pies[rand(@prendas_pies.length)].id
        @conversion_pies = Array.new

        @prendas_pies.each do |prenda|
            @conversion_pies[@i] = [prenda.tipo,prenda.id]
            @i+=1
        end

        @i=0

        @prendas_accesorios = @guardarropa.prendas.select{|p| p.categoria == "Accesorio"}
        @prenda_accesorios = @prendas_accesorios[rand(@prendas_accesorios.length)].id
        @conversion_accesorios = Array.new

        @prendas_accesorios.each do |prenda|
            @conversion_accesorios[@i] = [prenda.tipo,prenda.id]
            @i+=1
        end

        @i=0

    end

    def update
        @atuendo = Atuendo.find(params[:id])

        @atuendo.update! atuendo_params

        redirect_to guardarropa_atuendo_path(@guardarropa,@atuendo)
    end

    def edit
        @atuendo = Atuendo.find(params[:id])

        @i = 0

        @prendas_torso = @guardarropa.prendas.select{|p| p.categoria == "Torso"}
        @prenda_torso = @atuendo.prenda_torso_id
        @conversion_torso = Array.new

        @prendas_torso.each do |prenda|
            @conversion_torso[@i] = [prenda.tipo,prenda.id]
            @i+=1
        end

        @i=0

        @prendas_piernas = @guardarropa.prendas.select{|p| p.categoria == "Piernas"}
        @prenda_piernas = @atuendo.prenda_piernas_id
        @conversion_piernas = Array.new

        @prendas_piernas.each do |prenda|
            @conversion_piernas[@i] = [prenda.tipo,prenda.id]
            @i+=1
        end

        @i=0

        @prendas_pies = @guardarropa.prendas.select{|p| p.categoria == "Pies"}
        @prenda_pies = @atuendo.prenda_pies_id
        @conversion_pies = Array.new

        @prendas_pies.each do |prenda|
            @conversion_pies[@i] = [prenda.tipo,prenda.id]
            @i+=1
        end

        @i=0

        @prendas_accesorios = @guardarropa.prendas.select{|p| p.categoria == "Accesorio"}
        @prenda_accesorios = @atuendo.prenda_accesorios_id
        @conversion_accesorios = Array.new

        @prendas_accesorios.each do |prenda|
            @conversion_accesorios[@i] = [prenda.tipo,prenda.id]
            @i+=1
        end

        @i=0
    end

    def destroy
        @atuendo = Atuendo.find(params[:id])
        @atuendo.destroy!
        redirect_to action: :index
    end

    private
    def atuendo_params
        params.require(:atuendo).permit(:Descripcion, :Puntaje, :Etiqueta_DiaNoche, :Etiqueta_Estacion, :Etiqueta_Formal, :guardarropa_id, :prenda_accesorios_id, :prenda_piernas_id, :prenda_pies_id, :prenda_torso_id)#:tipo, :categoria, :tela, :color_primario, :color_secundario, :link_imagen, :imagen, 
    end

    def get_guardarropa
        @guardarropa = Guardarropa.find(params[:guardarropa_id])
    end
end
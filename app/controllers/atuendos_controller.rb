class AtuendosController < ApplicationController
    
    skip_forgery_protection
    before_action :get_guardarropa


    def index
        ordenar
        filtrar
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
        @prendas_piernas = @guardarropa.prendas.select{|p| p.categoria == "Piernas"}
        @prendas_pies = @guardarropa.prendas.select{|p| p.categoria == "Pies"}
        @prendas_accesorios = @guardarropa.prendas.select{|p| p.categoria == "Accesorio"}

        if @prendas_torso.length > 0 && @prendas_piernas.length > 0 && @prendas_pies.length > 0 && @prendas_accesorios.length > 0
            @prenda_torso = @prendas_torso[rand(@prendas_torso.length)].id
            @conversion_torso = Array.new
    
            @prendas_torso.each do |prenda|
                @conversion_torso[@i] = [prenda.tipo,prenda.id]
                @i+=1
            end
    
            @i=0

            @prenda_piernas = @prendas_piernas[rand(@prendas_piernas.length)].id
            @conversion_piernas = Array.new

            @prendas_piernas.each do |prenda|
                @conversion_piernas[@i] = [prenda.tipo,prenda.id]
                @i+=1
            end

            @i=0

            @prenda_pies = @prendas_pies[rand(@prendas_pies.length)].id
            @conversion_pies = Array.new

            @prendas_pies.each do |prenda|
                @conversion_pies[@i] = [prenda.tipo,prenda.id]
                @i+=1
            end

            @i=0

            @prenda_accesorios = @prendas_accesorios[rand(@prendas_accesorios.length)].id
            @conversion_accesorios = Array.new

            @prendas_accesorios.each do |prenda|
                @conversion_accesorios[@i] = [prenda.tipo,prenda.id]
                @i+=1
            end

            @i=0
        else
            redirect_to guardarropa_atuendos_path(@guardarropa), alert: "ERROR: No hay prendas disponibles para crear un atuendo"
        end
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
        params.require(:atuendo).permit(:Descripcion, :Puntaje, :Etiqueta_DiaNoche, :Etiqueta_Estacion, :Etiqueta_Formal, :guardarropa_id, :prenda_accesorios_id, :prenda_piernas_id, :prenda_pies_id, :prenda_torso_id)
    end

    def get_guardarropa
        @guardarropa = Guardarropa.find(params[:guardarropa_id])
    end
    
    def filtrar
        if params[:Puntaje] != '' && params[:Puntaje] != nil
            @atuendos = @atuendos.select{|a| a.Puntaje == params[:Puntaje]}
        end
        if params[:Formalidad] != '' && params[:Formalidad] != nil
            @atuendos = @atuendos.select{|a| a.Etiqueta_Formal == params[:Formalidad]}
        end
        if params[:Estacion] != '' && params[:Estacion] != nil
            @atuendos = @atuendos.select{|a| a.Etiqueta_Estacion == params[:Estacion]}
        end
        if params[:DiaNoche] != '' && params[:DiaNoche] != nil
            @atuendos = @atuendos.select{|a| a.Etiqueta_DiaNoche == params[:DiaNoche]}
        end
    end

    def ordenar
        if params[:orden] == nil || params[:orden] == ""
            @atuendos = @guardarropa.atuendos.all 
        else 
            if params[:orden] == "AZ"
                @atuendos = @guardarropa.atuendos.order(:Descripcion)
            elsif params[:orden] == "ZA"
                @atuendos = @guardarropa.atuendos.order(Descripcion: :desc) 
            elsif params[:orden] == "Mayor puntaje"
                @atuendos = @guardarropa.atuendos.order(Puntaje: :desc)
            elsif params[:orden] == "Menor puntaje"
                @atuendos = @guardarropa.atuendos.order(:Puntaje)
            end
        end
    end
end
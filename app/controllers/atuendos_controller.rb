class AtuendosController < ApplicationController
    
    skip_forgery_protection
    before_action :get_guardarropa


    def index
        @atuendos = @guardarropa.atuendos.page(params[:page])
        #@atuendos.each do |atuendo|
        #    atuendo.comprobar_link_imagen!
        #end
    end

    def show
        @atuendo = atuendo.find(params[:id])
        #if !@atuendo.color_secundario.blank? 
        #    if !@atuendo.mismo_color?
        #    @atuendo.color_primario = @atuendo.color_primario + " y " + @atuendo.color_secundario
        #    end
        #end
        #@atuendo.comprobar_link_imagen!
    end

    def create
        @atuendo = @guardarropa.atuendos.build (atuendo_params)
        #@atuendo.comprobar_color_secundario
        @atuendo.save
        redirect_to guardarropa_atuendo_path(@guardarropa,@atuendo)
    end

    def new
        @atuendo = @guardarropa.atuendos.build

        @prendas_torso = @guardarropa.prendas.select{|p| p.categoria == "Torso"}
        @prendas_torso_paginable = Kaminari.paginate_array(@prendas_torso).page(params[:torso_page]).per(4)

        @prendas_piernas = @guardarropa.prendas.select{|p| p.categoria == "Piernas"}
        @prendas_piernas_paginable = Kaminari.paginate_array(@prendas_piernas).page(params[:piernas_page]).per(4)

        @prendas_pies = @guardarropa.prendas.select{|p| p.categoria == "Pies"}
        @prendas_pies_paginable = Kaminari.paginate_array(@prendas_pies).page(params[:pies_page]).per(4)

        @prendas_accesorio = @guardarropa.prendas.select{|p| p.categoria == "Accesorio"}
        @prendas_accesorio_paginable = Kaminari.paginate_array(@prendas_accesorio).page(params[:accesorio_page]).per(4)

        #@atuendo.prenda_torso = @prendas_torso[rand(@prendas_torso.count)]
    end

    def update
        @atuendo = atuendo.find(params[:id])
        @atuendo.update! atuendo_params
        #@atuendo.comprobar_color_secundario
        #redirect_to guardarropa_atuendo_path(@guardarropa,@atuendo)
    end

    def edit
        @atuendo = atuendo.find(params[:id])
        #@atuendo.comprobar_link_imagen!
    end

    def destroy
        @atuendo = atuendo.find(params[:id])
        @atuendo.destroy!
        redirect_to action: :index
    end

    private
    def atuendo_params
        params.require(:atuendo).permit(:guardarropa_id)#:tipo, :categoria, :tela, :color_primario, :color_secundario, :link_imagen, :imagen, 
    end

    def get_guardarropa
        @guardarropa = Guardarropa.find(params[:guardarropa_id])
    end
end

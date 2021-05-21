class GuardarropasController < ApplicationController
    def index
        @guardarropas = Guardarropa.page(params[:page])
    end
    def show
        @guardarropas = Guardarropa.find(params[:id])
        @prendas = @guardarropas.prendas
    end
    
    def create
        @guardarropa = Guardarropa.new guardarropa_params
        @guardarropa.save
        redirect_to "/guardarropas"
    end
    
    def new
        @guardarropa = Guardarropa.new 
    end
    
    def update
        @guardarropa = Guardarropa.find(params[:id])
        @guardarropa.update! guardarropa_params
        redirect_to @guardarropa
    end
    
    def edit
        @guardarropa = Guardarropa.find(params[:id])
    end
    
    def destroy
        @guardarropa = Guardarropa.find(params[:id])
        @guardarropa.destroy!
        redirect_to action: :index
    end
    
    private
    def guardarropa_params
        params.require(:guardarropa).permit(:Nombre)
    end

end

class GuardarropasController < ApplicationController
    before_action :get_user

    def index
        @guardarropas = @user.guardarropas.order(:Nombre)
        @guardarropas.each do |guardarropa|
            guardarropa.comprobar_link_imagen!
        end
    end
    
    def show
        @guardarropas = Guardarropa.find(params[:id])
        @prendas = @guardarropas.prendas
    end
    
    def create
        @guardarropa = @user.guardarropas.build (guardarropa_params)
        @guardarropa.save!
        redirect_to guardarropa_prendas_path(@guardarropa)
    end
    
    def new
        @guardarropa = @user.guardarropas.build
    end
    
    def update
        @guardarropa = Guardarropa.find(params[:id])
        @guardarropa.update! guardarropa_params
        redirect_to guardarropa_prendas_path(@guardarropa)
    end
    
    def edit
        @guardarropa = Guardarropa.find(params[:id])
        @guardarropa.comprobar_link_imagen!
    end
    
    def destroy
        @guardarropa = Guardarropa.find(params[:id])
        @guardarropa.destroy!
        redirect_to action: :index
    end
    
    private
    def guardarropa_params
        params.require(:guardarropa).permit(:Nombre, :imagen, :link_imagen)
    end

    def get_user
        @user = User.find(session[:user_id])
    end
end

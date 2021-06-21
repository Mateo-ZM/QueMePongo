class SessionsController < ApplicationController  
    skip_before_action :validate_logged_user!
    before_action :check_remain_logged_in, only: [:new]

    def new
    end

    def create
        user = User.find_by(email: params[:email])

        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to guardarropas_path, notice: 'Inicio de sesion exitoso!'
        else
            flash.now[:alert] = "Usuario o contraseña incorrectos!"
            render :new
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to '/login', notice: 'Cerrado de sesion exitoso!'
    end
end

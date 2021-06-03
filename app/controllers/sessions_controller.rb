class SessionsController < ApplicationController
    before_action :set_Session, only: %i[ show edit update destroy ]
  

    def new
    end

    def create
        user = User.find_by(email: params[:email])

        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to '/', notice: 'Login exitoso'
        else
            flash.now[:alert] = "Usuario o contraseña incorrectos"
            render :new
        end

    end
  
    def destroy
      session[:user_id] = nil
      redirect_to '/login', notice: 'Deslogueado exitósamente'
    end

  end
  
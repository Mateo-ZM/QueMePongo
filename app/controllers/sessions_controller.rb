class SessionsController < ApplicationController  
    skip_before_action :validate_logged_user!
    before_action :check_remain_logged_in, only: [:new]

    def new
    end

    def create
        user = User.find_by(email: params[:email])

        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            
            redirect_to guardarropas_path, notice:t('Login_exitoso') 
        else
            flash.now[:alert] = t('Login_incorrecto')
            render :new
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to login_path, notice: t('Logout_exitoso')
    end
end

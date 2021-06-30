class PasswordResetsController < ApplicationController
  skip_before_action :validate_logged_user!
  before_action :reset_login!

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    user.send_password_reset if user
    flash[:notice] = t('Email_enviado')
    redirect_to login_path
  end

  def edit
    @user = User.find_by_reset_password_token!(params[:id])
  end

  def update
    @user = User.find_by_reset_password_token!(params[:id])
    if @user.reset_password_sent_at < 2.hour.ago
      flash[:notice] = t('Reset_expirado')
      redirect_to new_password_reset_path
    elsif @user.update(user_params)
      flash[:notice] = t('Contraseña_cambiada')
      redirect_to login_path
    else
      flash[:alert] = t('Error_cambiar_contraseña')
      render :edit
    end
  end
  
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:password, :password_confirmation)
    end

    def reset_login!
      if current_user
        session[:user_id] = nil
      end
  end
end

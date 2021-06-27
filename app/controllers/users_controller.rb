class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy], except: [:new, :create]
  skip_before_action :validate_logged_user!, :only => [:new, :create]
  before_action :check_remain_logged_in, only: [:new]
  

  # GET /users or /users.json
  def index
    @users = User.page(params[:page])
    @cantidad_prendas
    
  end

  # GET /users/1 or /users/1.json
  def show
    @user.comprobar_link_imagen!
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    @user.comprobar_link_imagen!
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)
    if @user.tamanio_password_correcto?
      if @user.save
        session[:user_id] = @user.id
        redirect_to profile_path, notice: "¡Registro exitoso!"
      else
        flash.now[:alert] = "¡Error al registrarse! Intente de nuevo."
      end
    else
      flash.now[:alert] = "La contrasena debe tener entre 8 y 16 caracteres"
      render action: "new"
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    if @user.update(user_params)
      redirect_to profile_path, notice: "¡Perfil editado correctamente!"
    else
      render :edit, alert: "Error al editar perfil."
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy
    redirect_to users_path, notice: "User was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(session[:user_id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :nombre, :apellido, :genero, :imagen, :link_imagen)
    end

    def resetear
      redirect_to logout_path, method: :get and return
    end
    
end

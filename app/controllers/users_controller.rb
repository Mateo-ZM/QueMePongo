class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ], except: [:new, :create]
  skip_before_action :validate_logged_user!

  # GET /users or /users.json
  def index
    @users = User.page(params[:page])
    @cantidad_prendas
    
  end

  # GET /users/1 or /users/1.json
  def show
  end

  # GET /users/new
  def new
    reset_session
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)

    if @user.password.length > 7 && @user.password.length < 17
      respond_to do |format|
        if @user.save
          format.html { redirect_to login_path, notice: "User was successfully created." }
          format.json { render :show, status: :created, location: @user }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    else
      flash.alert = "La contrasena debe tener entre 8 y 16 caracteres"
      render action: "new"
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(session[:user_id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end

    def resetear
      redirect_to logout_path, method: :get and return
    end
end

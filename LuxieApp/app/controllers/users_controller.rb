class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
	before_action :ensure_admin
	
  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to users_path, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
			params = user_update_params
			update_params = {}
			
			if @user.authenticate(params[:current_password])
				if params[:password] == params[:confirm_password]
					update_params[:password] = params[:password]
				else
					redirect_to(edit_user_path, alert: 'Password and Confirm Password did not match.') and return
				end
			else
				redirect_to(edit_user_path, alert: 'Current Password was Incorrect.') and return
			end
			
			update_params[:username] ||= params[:username]
			
      if @user.update(update_params)
        format.html { redirect_to users_path, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end
	
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :password)
    end
			
		def user_update_params
			params.require(:user).permit(:username, :password, :current_password, :confirm_password);
		end
	
		def ensure_admin
			redirect_to root_path unless current_user.username == 'admin'
		end
end

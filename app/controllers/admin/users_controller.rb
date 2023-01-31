class Admin::UsersController < ApplicationController
  before_action :authenticate_admin!, except: [:update]
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  
  def index
    @user = User.new
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def edit
    @user = User.find(params[:id])
  end

  
  
  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to admin_user_path(user.id)
  end
  
  private
  def user_params
    params.require(:user).permit(
      :first_name_kana, 
      :last_name_kana, 
      :nickname, 
      :gender, 
      :age, 
      :address, 
      :email, 
      :encrypted_password, 
      :is_deleted)
  end
end

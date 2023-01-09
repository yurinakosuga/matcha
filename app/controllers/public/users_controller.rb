class Public::UsersController < ApplicationController
  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end
  
  def update
    user = current_user
    user.update(user_params)
    redirect_to user_path(current_user.id)  
  end

  def unsubscribe
  end
  
  def withdraw
  end
  
  def user_params
    params.require(:user).permit(:first_name_kana, :last_name_kana, :nickname, :gender, :age, :address, :email, :encrypted_password, :is_deleted)
  end
end

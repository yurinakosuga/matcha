class Public::UsersController < ApplicationController
  before_action :authenticate_user!, except: [:update, :withdraw, :guest_sign_in]
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  def show
    
    @user = User.find(params[:id])
    @new_diaries = Diary.all.order(updated_at: :desc).limit(10)
  end

  def edit
    @user = current_user
  end
  
  def update
    user = current_user
    user.update!(user_params)
    redirect_to user_path(current_user.id)  
  end

  def unsubscribe
  end
  
  def withdraw
  end
  
  def guest_sign_in
    user = User.find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.last_name_kana = "ゲスト"
      user.first_name_kana = "ゲスト"
      user.nickname = "ゲスト"
      user.gender = 1
      user.age = 1
      user.address = 1
      # user.skip_confirmation!  # Confirmable を使用している場合は必要
      # 例えば name を入力必須としているならば， user.name = "ゲスト" なども必要
    end
    sign_in user
    redirect_to user_path(current_user.id), notice: 'ゲストユーザーとしてログインしました。'
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
      :is_deleted
      )
  end
end

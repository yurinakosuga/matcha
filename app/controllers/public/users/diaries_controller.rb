class Public::Users::DiariesController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @diaries = @user.diaries.page(params[:page])
  end
end
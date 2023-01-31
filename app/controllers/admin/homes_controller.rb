class Admin::HomesController < ApplicationController
  before_action :authenticate_admin!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def top
    @diaries = Diary.all.order(created_at: :desc)
    
    
  end
end

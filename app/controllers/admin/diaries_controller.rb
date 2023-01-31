class Admin::DiariesController < ApplicationController
  before_action :authenticate_admin!, except: [:destroy]
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  def show
    @diary = Diary.find(params[:id])
  end

  def edit
  end
  
  def destroy
    
    @diary = Diary.find(params[:id])
    @diary.destroy
    redirect_to admin_root_path
    
  end
end

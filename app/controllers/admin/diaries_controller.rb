class Admin::DiariesController < ApplicationController
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

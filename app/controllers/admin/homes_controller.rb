class Admin::HomesController < ApplicationController
  #before_action :authenticate_admin!
  def top
    @diaries = Diary.all
    
    
  end
end

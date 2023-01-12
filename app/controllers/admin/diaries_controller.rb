class Admin::DiariesController < ApplicationController
  def show
    @diary = Diary.find(params[:id])
  end

  def edit
  end
end

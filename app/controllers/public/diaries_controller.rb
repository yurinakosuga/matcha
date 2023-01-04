class Public::DiariesController < ApplicationController
  def index
    @diaries = Order.all
  end
  
  def new
    @diary = Diary.new 
    @diaries = Diary.all
    
  end
  
  def show
    @diary = Diary.find(params[:id])
  end

  def edit
    @diary = Diary.find(params[:id])
  end
  
  def create
    @diary = Diary.new(diary_params)
    @diary.user_id = current_customer.id
  end

  def update
  end
  
  def destroy
  end

end

class Public::DiariesController < ApplicationController
  def index
    @diaries = Diary.all
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
    @diary.user_id = current_user.id
    @diary.date = "#{params[:date_year]}-#{params[:date_month]}-#{params[:date_day]} 00:00:00"
    @diary.save
    
    if @diary.save
      redirect_to diary_path(@diary.id)
    else
      render new
    end
  end

  def update
    @diary = Diary.find(params[:id])
    @diary.update(diary_params)
    redirect_to diary_path(@diary.id) 
  end
  
  def destroy
  end
  
  def diary_params
    params.require(:diary).permit(:user_id, :shop_id, :number_of_times, :week, :time, :number_of_people, :how_to_use, :waiting_time, :genre_id, :price, :amount, :darkness, :sweetness, :comprehensive_evaluation, :image)
  end

end

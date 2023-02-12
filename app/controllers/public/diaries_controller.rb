class Public::DiariesController < ApplicationController
  before_action :authenticate_user!, except: [:create, :update, :destroy]
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  def index
    
    if params[:shop_id].present?
      @diaries = Diary.where(shop_id: params[:shop_id]).page(params[:page]).order(created_at: :desc)
    else
      @diaries = Diary.all.page(params[:page]).order(created_at: :desc)
    end
  end
  
  def new
    @diary = Diary.new 
    @diaries = Diary.all
    
  end
  
  def show
    @diary = Diary.find(params[:id])
    @user = @diary.user 
    @comments = @diary.comments
    @comment = current_user.comments.new
    
  end

  def edit
    @diary = Diary.find(params[:id])
    if @diary.user == current_user
      render "edit"
    else
      redirect_to root_path
    end
  end
  
  def create
    @diary = Diary.new(diary_params)
    @diary.user_id = current_user.id
    @diary.date = "#{params[:diary][:date_year]}-#{params[:diary][:date_month]}-#{params[:diary][:date_day]} 00:00:00"
     
    if @diary.save
      redirect_to user_diaries_path(current_user.id)
    else
      render :new
    end
  end

  def update
    @diary = Diary.find(params[:id])
    @diary.date = "#{params[:diary][:date_year]}-#{params[:diary][:date_month]}-#{params[:diary][:date_day]} 00:00:00"
    @diary.update(diary_params)
    redirect_to diary_path(@diary.id) 
  end
  
  def destroy
    @diary = Diary.find(params[:id])
    user = @diary.user
    @diary.destroy
    redirect_to user_diaries_path(user.id) 
    
  end
  
  def diary_params
    params.require(:diary).permit(
      :user_id,
      :shop_id,
      :number_of_times,
      :date,
      :week,
      :time,
      :number_of_people,
      :how_to_use,
      :waiting_time,
      :genre_id,
      :price,
      :amount,
      :darkness,
      :sweetness,
      :comprehensive_evaluation,
      :image,
      :free_writing)
      
  end

end

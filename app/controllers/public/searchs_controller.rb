class Public::SearchsController < ApplicationController
  def new
    @shops = Shop.joins(:diaries)
    if params[:name].present?
      @shops = @shops.where("name LIKE ?", "%#{params[:name]}%")
    end
    
    if params[:number_of_times].present?
      @shops = @shops.where(diaries: { waiting_time: params[:number_of_times] })
    end
    
    if params[:week].present?
      @shops = @shops.where(diaries: { waiting_time: params[:week] })
    end
    
    if params[:time].present?
      @shops = @shops.where(diaries: { waiting_time: params[:time] })
    end
    
    if params[:number_of_people].present?
      @shops = @shops.where(diaries: { number_of_people: params[:number_of_people] })
    end
    
    if params[:how_to_use].present?
      @shops = @shops.where(diaries: { waiting_time: params[:how_to_use] })
    end
    
    if params[:waiting_time].present?
      @shops = @shops.where(diaries: { waiting_time: params[:waiting_time] })
    end
    
    if params[:genre].present?
      @shops = @shops.where("name LIKE ?", "%#{params[:genre]}%")
    end
    
    if params[:price].present?
      @shops = @shops.where(diaries: { waiting_time: params[:price] })
    end
    
    if params[:amount].present?
      @shops = @shops.where(diaries: { waiting_time: params[:amount] })
    end
    
    if params[:darkness].present?
      @shops = @shops.where(diaries: { waiting_time: params[:darkness] })
    end
    
    if params[:sweetness].present?
      @shops = @shops.where(diaries: { waiting_time: params[:sweetness] })
    end
    
    if params[:comprehensive_evaluation].present?
      @shops = @shops.where(diaries: { waiting_time: params[:comprehensive_evaluation] })
    end
    
  end
  
  def show
     @shops = @shops.distinct
    p "検索した結果が表示されます"
    @shops.each do |shop|
      p shop
    end
    p "=============================================="
  end
end

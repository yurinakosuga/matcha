class Public::HomesController < ApplicationController
  def top
    @shops = Shop.joins(:diaries)
    if params[:name].present?
      @shops = @shops.where("name LIKE ?", "%#{params[:name]}%")
    end
    
    if params[:waiting_time].present?
      @shops = @shops.where(diaries: { waiting_time: params[:waiting_time] })
    end
    
    if params[:number_of_people].present?
      @shops = @shops.where(diaries: { number_of_people: params[:number_of_people] })
    end
    
    @shops = @shops.distinct
    p "検索した結果が表示されます"
    @shops.each do |shop|
      p shop
    end
    p "=============================================="
  end
end

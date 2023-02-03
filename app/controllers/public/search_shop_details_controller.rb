class Public::SearchShopDetailsController < ApplicationController
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  
    def search
      #@shops = Shop.joins(:diaries)
      @query_flag = false
      @shops = []
      #byebug
      # if params[:name].present?
      #   @query_flag = true
      #   @shops = Shop.joins(:diaries).where("name LIKE ?", "%#{params[:name]}%").distinct
      # end
      
      if params[:number_of_times].present?
        @query_flag = true
        @shops = Shop.joins(:diaries).where(diaries: { number_of_times: params[:number_of_times] }).distinct
      end
      
      if params[:week].present?
        @query_flag = true
        @shops = Shop.joins(:diaries).where(diaries: { week: params[:week] }).distinct
      end
      
      if params[:time].present?
        @query_flag = true
        @shops = Shop.joins(:diaries).where(diaries: { time: params[:time] }).distinct
      end
      
      if params[:number_of_people].present?
        @query_flag = true
        @shops = Shop.joins(:diaries).where(diaries: { number_of_people: params[:number_of_people] }).distinct
      end
      
      if params[:how_to_use].present?
        @query_flag = true
        @shops = Shop.joins(:diaries).where(diaries: { how_to_use: params[:how_to_use] }).distinct
      end
      
      if params[:waiting_time].present?
        @query_flag = true
        @shops = Shop.joins(:diaries).where(diaries: { waiting_time: params[:waiting_time] }).distinct
      end
      
      # if params[:genre].present?
      #   @query_flag = true
      #   @shops = Shop.joins(:diaries).where("name LIKE ?", "%#{params[:genre]}%").distinct
      # end
      
      if params[:genre].present?
        @query_flag = true
        @shops = Shop.joins(:diaries).where(diaries: { genre: params[:genre] }).distinct
      end
      
      if params[:price].present?
        @query_flag = true
        @shops = Shop.joins(:diaries).where(diaries: { price: params[:price] }).distinct
      end
      
      if params[:amount].present?
        @query_flag = true
        @shops = Shop.joins(:diaries).where(diaries: { amount: params[:amount] }).distinct
      end
      
      if params[:darkness].present?
        @query_flag = true
        @shops = Shop.joins(:diaries).where(diaries: { darkness: params[:darkness] }).distinct
      end
      
      if params[:sweetness].present?
        @query_flag = true
        @shops = Shop.joins(:diaries).where(diaries: { sweetness: params[:sweetness] }).distinct
      end
      
      if params[:comprehensive_evaluation].present?
        @query_flag = true
        @shops = Shop.joins(:diaries).where(diaries: { comprehensive_evaluation: params[:comprehensive_evaluation] }).distinct
      end
    end  
 
end

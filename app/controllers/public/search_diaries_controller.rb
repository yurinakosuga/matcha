class Public::SearchDiariesController < ApplicationController
#   before_action :authenticate_user!
#   before_action :configure_permitted_parameters, if: :devise_controller?
    
    def search
      #@shops = Shop.joins(:diaries)
      @query_flag = false
      @diaries = Diary.all
      #byebug
      # if params[:name].present?
      #   @query_flag = true
      #   @shops = Shop.joins(:diaries).where("name LIKE ?", "%#{params[:name]}%").distinct
      # end
      if params[:shop_id].present?
         @query_flag = true
         @diaries = @diaries.where(shop_id: params[:shop_id]).distinct
      end
      
      if params[:number_of_times].present?
         @query_flag = true
         @diaries = @diaries.where(number_of_times: params[:number_of_times] ).distinct
      end
      
      if params[:week].present?
         @query_flag = true
         @diaries = @diaries.where(week: params[:week] ).distinct
      end
      
      if params[:time].present?
         @query_flag = true
         @diaries = @diaries.where(time: params[:time] ).distinct
      end
      
      if params[:number_of_people].present?
         @query_flag = true
         @diaries = @diaries.where(number_of_people: params[:number_of_people] ).distinct
      end
      
      if params[:how_to_use].present?
         @query_flag = true
         @diaries = @diaries.where(how_to_use: params[:how_to_use] ).distinct
      end
      
      if params[:waiting_time].present?
         @query_flag = true
         @diaries = @diaries.where(waiting_time: params[:waiting_time] ).distinct
      end
      
      # if params[:genre].present?
      #   @query_flag = true
      #   @shops = Shop.joins(:@diaries).where("name LIKE ?", "%#{params[:genre]%").distinct
      # end
      
      if params[:genre_id].present?
         @query_flag = true
         @diaries = @diaries.where(genre_id: params[:genre_id] ).distinct
      end
      
      if params[:price].present?
         @query_flag = true
         @diaries = @diaries.where(price: params[:price] ).distinct
      end
      
      if params[:amount].present?
         @query_flag = true
         @diaries = @diaries.where(amount: params[:amount] ).distinct
      end
      
      if params[:darkness].present?
         @query_flag = true
         @diaries = @diaries.where(darkness: params[:darkness] ).distinct
      end
      
      if params[:sweetness].present?
         @query_flag = true
         @diaries = @diaries.where(sweetness: params[:sweetness] ).distinct
      end
      
      if params[:comprehensive_evaluation].present?
         @query_flag = true
         @diaries = @diaries.where(comprehensive_evaluation: params[:comprehensive_evaluation] ).distinct
      end

      if params[:shop_id].blank? &&
         params[:number_of_times].blank? &&
         params[:week].blank? &&
         params[:time].blank? &&
         params[:number_of_people].blank? &&
         params[:how_to_use].blank? &&
         params[:waiting_time].blank? &&
         params[:genre_id].blank? &&
         params[:price].blank? &&
         params[:amount].blank? &&
         params[:darkness].blank? &&
         params[:sweetness].blank? &&
         params[:comprehensive_evaluation].blank? 
        @query_flag = true
        @diaries = @diaries.none
      end
    end  
 
end

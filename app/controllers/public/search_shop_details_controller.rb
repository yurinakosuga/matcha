class Public::SearchShopDetailsController < ApplicationController
    def search
      @shops = Shop.joins(:diaries)
      if params[:name].present?
        @shops = @shops.where("name LIKE ?", "%#{params[:name]}%")
      end
      
      if params[:number_of_times].present?
        @shops = @shops.where(diaries: { number_of_times: params[:number_of_times] })
      end
      
      if params[:week].present?
        @shops = @shops.where(diaries: { week: params[:week] })
      end
      
      if params[:time].present?
        @shops = @shops.where(diaries: { time: params[:time] })
      end
      
      if params[:number_of_people].present?
        @shops = @shops.where(diaries: { number_of_people: params[:number_of_people] })
      end
      
      if params[:how_to_use].present?
        @shops = @shops.where(diaries: { how_to_use: params[:how_to_use] })
      end
      
      if params[:waiting_time].present?
        @shops = @shops.where(diaries: { waiting_time: params[:waiting_time] })
      end
      
      if params[:genre].present?
        @shops = @shops.where("name LIKE ?", "%#{params[:genre]}%")
      end
      
      if params[:price].present?
        @shops = @shops.where(diaries: { price: params[:price] })
      end
      
      if params[:amount].present?
        @shops = @shops.where(diaries: { amount: params[:amount] })
      end
      
      if params[:darkness].present?
        @shops = @shops.where(diaries: { darkness: params[:darkness] })
      end
      
      if params[:sweetness].present?
        @shops = @shops.where(diaries: { sweetness: params[:sweetness] })
      end
      
      if params[:comprehensive_evaluation].present?
        @shops = @shops.where(diaries: { comprehensive_evaluation: params[:comprehensive_evaluation] })
      end
    end  
 
    def index
    end
    
    def show
    end
    
end

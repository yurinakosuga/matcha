class Public::SearchShopNamesController < ApplicationController
  
    def search
      @q = Shop.ransack(params[:q])
      @shops = @q.result(distinct: true)
    end
    
    def index
      
    
    end
    
    
end

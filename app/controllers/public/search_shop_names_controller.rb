class Public::SearchShopNamesController < ApplicationController
  
    def search
      @query = params[:q]
      @q =  Shop.ransack(params[:q])
      @shops = []
      
      if params[:q].present?
        #@q = Shop.ransack(params[:q])
        @shops = @q.result(distinct: true)
      end
    end
    
    def index
      
    
    end
    
    
end

class Public::SearchShopNamesController < ApplicationController
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  
    def search
      @query = params[:q]
      @q =  Shop.ransack(params[:q])
      @shops = []
      
      if params[:q].present?
        #@q = Shop.ransack(params[:q])
        @shops = @q.result(distinct: true)
      end
    end
    
end

class Public::SearchShopNamesController < ApplicationController
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  
    def search
      @q =  Shop.ransack(params[:q])

      if params.dig(:q, :name_cont).blank?
        @shops = []
      else
        @shops = @q.result(distinct: true)
      end
    end
    
end

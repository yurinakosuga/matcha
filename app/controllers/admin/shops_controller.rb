class Admin::ShopsController < ApplicationController
  before_action :authenticate_admin!, except: [:create, :update, :destroy]
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  
  def index
    @shop = Shop.new
    @shops = Shop.all.order(created_at: :desc)
    
  end
  
  def create
    # １.&2. データを受け取り新規登録するためのインスタンス作成
    shop = Shop.new(shop_params)
    # 3. データをデータベースに保存するためのsaveメソッド実行
    shop.save
    
    redirect_to '/admin/shops'
    
  end
  
  def edit
    @shop = Shop.find(params[:id])
    
  end
  
  def update
    shop = Shop.find(params[:id])
    shop.update(shop_params)
    redirect_to '/admin/shops'   
  end
  
  def destroy
    @shop = Shop.find(params[:id])
    @shop.destroy
    redirect_to '/admin/shops'
  end
  
   private
  # ストロングパラメータ
  def shop_params
    params.require(:shop).permit(:name)
  end

end
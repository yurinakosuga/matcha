class Admin::ShopsController < ApplicationController
  
  def index
    @shop = Shop.new
    @shops = Shops.all
    
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
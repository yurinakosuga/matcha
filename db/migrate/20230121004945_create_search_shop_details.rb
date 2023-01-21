class CreateSearchShopDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :search_shop_details do |t|

      t.timestamps
    end
  end
end

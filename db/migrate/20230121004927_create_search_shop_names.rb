class CreateSearchShopNames < ActiveRecord::Migration[6.1]
  def change
    create_table :search_shop_names do |t|

      t.timestamps
    end
  end
end

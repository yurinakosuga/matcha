class CreateDiaries < ActiveRecord::Migration[6.1]
  def change
    create_table :diaries do |t|
      
      t.integer  :user_id, null: false
      t.integer  :shop_id, null: false
      t.string  :number_of_times, null: false
      t.datetime  :date, null: false
      t.integer  :week, null: false
      t.integer  :time, null: false
      t.integer  :number_of_people, null: false
      t.integer  :how_to_use, null: false
      t.integer  :waiting_time, null: false
      t.integer  :genre_id, null: false
      t.integer  :price, null: false
      t.integer  :amount, null: false
      t.integer  :darkness, null: false
      t.integer  :sweetness, null: false
      t.integer  :comprehensive_evaluation, null: false

      t.timestamps
    end
  end
end

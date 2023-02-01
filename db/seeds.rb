# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
   Admin.create!(
      email: 'test@test.com',
      password: 'test1234',
      
   )


num = 1
while num < 10 do 
   User.create(id: num, 
               email: "#{num}@gmail.com", 
               last_name_kana: "hoge", 
               first_name_kana: "hoge",
               nickname: "hoge",
               gender: 0,
               age: 1, 
               address: 0, 
               password: "hoghoeghoe") 
   num = num + 1
end            
                
               


["パフェ", "ケーキ", "プリン", "アイスクリーム", "その他"].each.with_index(1) do |name, index| 
   Genre.create(id: index, name: name )
end


["中村藤吉", "祇園辻利", "寿月堂", "ナナズグリーンティ", "その他"].each.with_index(1) do |name, index| 
   Shop.create(id: index, name: name )
end



num = 1
while num < 10 do 
   Diary.create(id: num,
                user_id: num, 
                shop_id: 1, 
                date: Date.new(2022, 8, 15),
                number_of_times: "1",
                week: 1, 
                time: 1, 
                number_of_people: 1, 
                how_to_use: 1,
                waiting_time: 1,
                genre_id: 1,
                price: 1,
                amount: 1,
                darkness: 5,
                sweetness: 1,
                comprehensive_evaluation: 5,
                free_writing: "抹茶が濃くておいしかったです")
   num = num + 1
end







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
   User.create(id: num, email: "#{num}@gmail.com", nickname: "hoge", address: 0, last_name_kana: "hoge", first_name_kana: "hoge", age: 1, gender: 0, password: "hoghoeghoe")
   num = num + 1
end




["hoge", "fuga", "higa"].each.with_index(1) do |name, index| 
   Shop.create(id: index, name: name )
end



num = 1
while num < 10 do 
   Diary.create(id: num, user_id: num, shop_id:)
   num = num + 1
end







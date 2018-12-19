# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: "aaa3@aaa", first_name: "性", last_name: "名", kana_first_name: "セイ", kana_last_name: "メイ", nick_name: "あだ名", postal_code: "0000000", address: "東京都", user_image_id: "0", deleted_at: nil, admin: true, password: "aaaaaa" )

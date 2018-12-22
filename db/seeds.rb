# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: "aaa@aaa", first_name: "るろう人", last_name: "研究会", kana_first_name: "ルロウニン", kana_last_name: "ケンキュウカイ", nick_name: "るろけん", postal_code: "0000000", address: "東京都", deleted_at: nil, admin: true, password: "aaaaaa", phone_number: "00000000000" )
Event.create(event_day: "20190104", event_title:"WebCampPro発表会", event_image_id: "", event_prefectures: "東京都", event_city:"渋谷区",event_address: "東京都渋谷区神南")
Event.create(event_day: "20190104", event_title:"第一回WebCampFes", event_image_id: "", event_prefectures: "東京都", event_city:"渋谷区",event_address: "東京都渋谷区神南")
Event.create(event_day: "20190104", event_title:"サンプルイベント１", event_image_id: "", event_prefectures: "東京都", event_city:"渋谷区",event_address: "東京都渋谷区神南")
Event.create(event_day: "20190104", event_title:"サンプルイベント２", event_image_id: "", event_prefectures: "東京都", event_city:"渋谷区",event_address: "東京都渋谷区神南")
Event.create(event_day: "20190104", event_title:"サンプルイベント３", event_image_id: "", event_prefectures: "東京都", event_city:"渋谷区",event_address: "東京都渋谷区神南")
Event.create(event_day: "20190104", event_title:"サンプルイベント４", event_image_id: "", event_prefectures: "東京都", event_city:"渋谷区",event_address: "東京都渋谷区神南")
Event.create(event_day: "20190104", event_title:"サンプルイベント５", event_image_id: "", event_prefectures: "東京都", event_city:"渋谷区",event_address: "東京都渋谷区神南")
Event.create(event_day: "20190104", event_title:"サンプルイベント６", event_image_id: "", event_prefectures: "東京都", event_city:"港区",event_address: "東京都港区六本木")
Event.create(event_day: "20190104", event_title:"サンプルイベント７", event_image_id: "", event_prefectures: "東京都", event_city:"港区",event_address: "東京都港区六本木")
Event.create(event_day: "20190105", event_title:"サンプルイベント８", event_image_id: "", event_prefectures: "東京都", event_city:"港区",event_address: "東京都港区六本木")
Event.create(event_day: "20190105", event_title:"サンプルイベント９", event_image_id: "", event_prefectures: "東京都", event_city:"港区",event_address: "東京都港区六本木")
Cd.create(cd_title: "裸眼のメンターさん大体イケメン",cd_image_id: "", cd_genre: "HipHop", cd_price:  2500, cd_stock: 25, cd_label: "チーム開発")
Cd.create(cd_title: "ラーメンとライス一緒に食べるやつは邪道",cd_image_id: "", cd_genre: "HipHop", cd_price:  600, cd_stock: 30, cd_label: "チーム開発")
Cd.create(cd_title: "メロンに生ハム乗せて食べるやつは邪道",cd_image_id: "", cd_genre: "HipHop", cd_price:  6000, cd_stock: 20, cd_label: "チーム開発")
Cd.create(cd_title: "スイカに塩かけて食べるやつは邪道",cd_image_id: "", cd_genre: "HipHop", cd_price:  6880, cd_stock: 30, cd_label: "チーム開発")
Cd.create(cd_title: "ケニアに帰りたい",cd_image_id: "", cd_genre: "HipHop", cd_price:  880, cd_stock: 10, cd_label: "チーム開発")
Cd.create(cd_title: "僕の頭はお花畑",cd_image_id: "", cd_genre: "HipHop", cd_price:  9000, cd_stock: 15, cd_label: "チーム開発")
Cd.create(cd_title: "ドラえもんを嫁に下さい",cd_image_id: "", cd_genre: "レゲエ", cd_price:  900, cd_stock: 5, cd_label: "チーム開発")
Cd.create(cd_title: "僕が小便したら、虹がかかる",cd_image_id: "", cd_genre: "レゲエ", cd_price:  1900, cd_stock: 30, cd_label: "チーム開発")
Cd.create(cd_title: "「rails db:migrate」で大体のエラーなおる。",cd_image_id: "", cd_genre: "レゲエ", cd_price:  5500, cd_stock: 3, cd_label: "私は貝になりたくない")
Cd.create(cd_title: "自慢なんですが僕、鼻毛出たことありません",cd_image_id: "", cd_genre: "レゲエ", cd_price:  1300, cd_stock: 10, cd_label: "私は貝になりたくない")
Artist.create(artist_name: "早くエンジニアになりたい")
Artist.create(artist_name: "チーム開発")
Artist.create(artist_name: "イヤフォンはこだわる男")
Artist.create(artist_name: "ミスター西川(ウルトラソウル)")
Artist.create(artist_name: "コード読みたい男")
Artist.create(artist_name: "ズッコケ三人組")
Artist.create(artist_name: "お残しは許しまへんで")
Artist.create(artist_name: "オレンジジュース飲みすぎて尿がオレンジ")
Artist.create(artist_name: "ジャガイモって美味しいよね")
Artist.create(artist_name: "４人目のチームメイト募集")
Artist.create(artist_name: "よしいくぞう！！")
Disc.create(disc_number: 1, cd_id: 1)
Disc.create(disc_number: 2, cd_id: 2)
Disc.create(disc_number: 3, cd_id: 3)
Disc.create(disc_number: 4, cd_id: 4)
Disc.create(disc_number: 5, cd_id: 5)
Disc.create(disc_number: 6, cd_id: 6)
Disc.create(disc_number: 7, cd_id: 7)
Disc.create(disc_number: 8, cd_id: 8)
Disc.create(disc_number: 9, cd_id: 9)
Disc.create(disc_number: 10, cd_id: 10)
Disc.create(disc_number: 11, cd_id: 11)
Disc.create(disc_number: 12, cd_id: 12)
Disc.create(disc_number: 13, cd_id: 13)
Music.create(music_title: "サンプルミュージック１", music_number: 1, disc_id: 1, artist_id: 1)
Music.create(music_title: "サンプルミュージック２", music_number: 2, disc_id: 2, artist_id: 2)
Music.create(music_title: "サンプルミュージック３", music_number: 3, disc_id: 3, artist_id: 3)
Music.create(music_title: "サンプルミュージック４", music_number: 4, disc_id: 4, artist_id: 4)
Music.create(music_title: "サンプルミュージック５", music_number: 5, disc_id: 5, artist_id: 5)
Music.create(music_title: "サンプルミュージック６", music_number: 6, disc_id: 6, artist_id: 6)
Music.create(music_title: "サンプルミュージック７", music_number: 7, disc_id: 7, artist_id: 7)
Music.create(music_title: "サンプルミュージック８", music_number: 8, disc_id: 8, artist_id: 8)
Music.create(music_title: "サンプルミュージック９", music_number: 9, disc_id: 9, artist_id: 9)
Music.create(music_title: "サンプルミュージック１０", music_number: 10, disc_id: 10, artist_id: 10)
Music.create(music_title: "サンプルミュージック１１", music_number: 1, disc_id: 11, artist_id: 3)
Music.create(music_title: "サンプルミュージック１２", music_number: 1, disc_id: 12, artist_id: 9)
Music.create(music_title: "サンプルミュージック１３", music_number: 1, disc_id: 13, artist_id: 9)
Music.create(music_title: "サンプルミュージック１４", music_number: 1, disc_id: 2, artist_id: 9)
Music.create(music_title: "サンプルミュージック１５", music_number: 1, disc_id: 3, artist_id: 4)
Music.create(music_title: "サンプルミュージック１６", music_number: 1, disc_id: 4, artist_id: 4)
Music.create(music_title: "サンプルミュージック１７", music_number: 1, disc_id: 8, artist_id: 4)
Music.create(music_title: "サンプルミュージック１８", music_number: 1, disc_id: 9, artist_id: 4)
Music.create(music_title: "サンプルミュージック１９", music_number: 2, disc_id: 1, artist_id: 7)
Music.create(music_title: "サンプルミュージック２０", music_number: 3, disc_id: 1, artist_id: 10)
PurchaseHistory.create(user_id: 1, send_address: "東京都渋谷区神南", send_name: "テストさん", send_postal_code: "3501100", send_status: "受注", purchase_at: "2018-12-1")
PurchaseItem.create(purchase_history_id: 1, purchase_cd_title: "僕の頭はお花畑", purchase_cd_price: 9000, purchase_cd_quantity: 2, cd_id: 6)
PurchaseItem.create(purchase_history_id: 1, purchase_cd_title: "スイカに塩かけて食べるやつは邪道", purchase_cd_price: 6880, purchase_cd_quantity: 3, cd_id: 4)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: "aaa@aaa", first_name: "るろう人", last_name: "研究会", kana_first_name: "ルロウニン", kana_last_name: "ケンキュウカイ", nick_name: "るろけん", postal_code: "0000000", address: "東京都", deleted_at: nil, admin: true, password: "aaaaaa", phone_number: "00000000000" )
User.create(email: "ccc@ccc", first_name: "通行", last_name: "人", kana_first_name: "ツウコウ", kana_last_name: "ニン", nick_name: "少年A", postal_code: "1111111", address: "埼玉", phone_number: "11111111111", user_image_id: nil,, password: "cccccc", admin: false)
User.create(email:"eee@eee", first_name: "度羅湖",last_name: "丸フォイ",kana_first_name: "ドラコ",   kana_last_name: "マルフォイ",nick_name: "マルフォイ",    postal_code: "4444444", address:  "埼玉",  deleted_at: nil, admin: false, password: "dddddd", phone_number: "44444444444" )
User.create(email: "fff@fff", first_name:"針” ,last_name: "歩ったー",kana_first_name: ”ハリー”,kana_last_name:"ポッター",nick_name: "ハリーポッ ター",    postal_code: "5555555", address:  "山口",  deleted_at: nil, admin: false, password: "ffffff", phone_number: "09000000000" )
User.create(email: "ggg@ggg", first_name:"歯舞鬼" ,last_name: "紅蓮じゃあ",kana_first_name: ”ハーマイオニー”,kana_last_name:"グレンジャー",nick_name: "ハーマイオニーグレンジャー",postal_code: "6666666", address:  "熊本",  deleted_at: nil, admin: false, password: "gggggg", phone_number: "66666666666" )
User.create(email: "hhh@hhh", first_name:"流那” ,last_name: "羅部具度",kana_first_name: ”ルーナ”,kana_last_name:"ラブグッド",nick_name: "ルーナ ラブグッド",postal_code: "hhhhhhh", address:  "福岡",  deleted_at: nil, admin: false, password: "hhhhhh", phone_number: "77777777777" )

Event.create(event_day: "20190104", event_title:"WebCampPro発表会", event_image_id: "", event_prefectures: "東京都", event_city:"渋谷区",event_address: "代々木公園")
Event.create(event_day: "20190104", event_title:"第一回WebCampFes", event_image_id: "", event_prefectures: "東京都", event_city:"渋谷区",event_address: "代々木公園")
Event.create(event_day: "20190104", event_title:"サンプルイベント１", event_image_id: "", event_prefectures: "東京都", event_city:"渋谷区",event_address: "代々木公園")
Event.create(event_day: "20190104", event_title:"サンプルイベント２", event_image_id: "", event_prefectures: "東京都", event_city:"渋谷区",event_address: "代々木公園")
Event.create(event_day: "20190104", event_title:"サンプルイベント３", event_image_id: "", event_prefectures: "東京都", event_city:"渋谷区",event_address: "代々木公園")
Event.create(event_day: "20190104", event_title:"サンプルイベント４", event_image_id: "", event_prefectures: "東京都", event_city:"渋谷区",event_address: "代々木公園")
Event.create(event_day: "20190104", event_title:"サンプルイベント５", event_image_id: "", event_prefectures: "東京都", event_city:"渋谷区",event_address: "代々木公園")
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
RecodingArtist.create(cd_id:  1, artist_id:  1)
RecodingArtist.create(cd_id:  2, artist_id:  2)
RecodingArtist.create(cd_id:  3, artist_id:  3)
RecodingArtist.create(cd_id:  4, artist_id:  4)
RecodingArtist.create(cd_id:  5, artist_id:  5)
RecodingArtist.create(cd_id:  6, artist_id:  6)
RecodingArtist.create(cd_id:  7, artist_id:  7)
RecodingArtist.create(cd_id:  8, artist_id:  8)
RecodingArtist.create(cd_id:  9, artist_id:  9)
RecodingArtist.create(cd_id: 10, artist_id: 10)
Performer.create(artist_id: 1, event_id: 1)
Performer.create(artist_id: 2, event_id: 2)
Performer.create(artist_id: 3, event_id: 3)
Performer.create(artist_id: 4, event_id: 4)
Performer.create(artist_id: 5, event_id: 5)
Performer.create(artist_id: 6, event_id: 6)
Performer.create(artist_id: 7, event_id: 7)
Performer.create(artist_id: 8, event_id: 8)
Performer.create(artist_id: 9, event_id: 9)
Performer.create(artist_id: 10, event_id: 10)
Performer.create(artist_id: 11, event_id: 11)
Comment.create(user_id: 1, event_id:  1, comment: "楽しかった!!",   favorite_artist: "ミスター西川(ウルトラソウル)")
Comment.create(user_id: 1, event_id:  2, comment: "サイコー!!",     favorite_artist: "ミスター西川(ウルトラソウル)")
Comment.create(user_id: 1, event_id:  3, comment: "また行きたい!!", favorite_artist: "ミスター西川(ウルトラソウル)")
Comment.create(user_id: 1, event_id:  4, comment: "良かった!!",     favorite_artist: "ミスター西川(ウルトラソウル)")
Comment.create(user_id: 1, event_id:  5, comment: "楽しかった!!",   favorite_artist: "ミスター西川(ウルトラソウル)")
Comment.create(user_id: 1, event_id:  6, comment: "楽しかった!!",   favorite_artist: "ミスター西川(ウルトラソウル)")
Comment.create(user_id: 1, event_id:  7, comment: "楽しかった!!",   favorite_artist: "ミスター西川(ウルトラソウル)")
Comment.create(user_id: 1, event_id:  8, comment: "楽しかった!!",   favorite_artist: "ミスター西川(ウルトラソウル)")
Comment.create(user_id: 1, event_id:  9, comment: "楽しかった!!",   favorite_artist: "ミスター西川(ウルトラソウル)")
Comment.create(user_id: 1, event_id: 10, comment: "楽しかった!!",   favorite_artist: "ミスター西川(ウルトラソウル)")
Comment.create(user_id: 1, event_id: 11, comment: "楽しかった!!",   favorite_artist: "ミスター西川(ウルトラソウル)")
Comment.create(user_id: 2, event_id:  1, comment: "楽しかった!!",   favorite_artist: "ミスター西川(ウルトラソウル)")
Comment.create(user_id: 2, event_id:  2, comment: "楽しかった!!",   favorite_artist: "ミスター西川(ウルトラソウル)")
Comment.create(user_id: 2, event_id:  3, comment: "楽しかった!!",   favorite_artist: "ミスター西川(ウルトラソウル)")
Comment.create(user_id: 2, event_id:  4, comment: "楽しかった!!",   favorite_artist: "ミスター西川(ウルトラソウル)")
Comment.create(user_id: 2, event_id:  5, comment: "楽しかった!!",   favorite_artist: "ミスター西川(ウルトラソウル)")
Comment.create(user_id: 2, event_id:  6, comment: "楽しかった!!",   favorite_artist: "ミスター西川(ウルトラソウル)")
Comment.create(user_id: 2, event_id:  7, comment: "楽しかった!!",   favorite_artist: "ミスター西川(ウルトラソウル)")
Comment.create(user_id: 2, event_id:  8, comment: "楽しかった!!",   favorite_artist: "ミスター西川(ウルトラソウル)")
Comment.create(user_id: 2, event_id:  9, comment: "楽しかった!!",   favorite_artist: "ミスター西川(ウルトラソウル)")
Comment.create(user_id: 2, event_id: 10, comment: "楽しかった!!",   favorite_artist: "ミスター西川(ウルトラソウル)")
Comment.create(user_id: 2, event_id: 11, comment: "楽しかった!!",   favorite_artist: "ミスター西川(ウルトラソウル)")
Asiato.create(user_id: 1,  event_id:1  )
Asiato.create(user_id: 1,  event_id:2  )
Asiato.create(user_id: 1,  event_id:3  )
Asiato.create(user_id: 1,  event_id:4  )
Asiato.create(user_id: 1,  event_id:5  )
Asiato.create(user_id: 1,  event_id:6  )
Asiato.create(user_id: 1,  event_id:7  )
Asiato.create(user_id: 1,  event_id:8  )
Asiato.create(user_id: 1,  event_id:9  )
Asiato.create(user_id: 1,  event_id:10 )
Asiato.create(user_id: 2,  event_id:11 )
Asiato.create(user_id: 2,  event_id:1  )
Asiato.create(user_id: 2,  event_id:2  )
Asiato.create(user_id: 2,  event_id:3  )
Asiato.create(user_id: 2,  event_id:4  )
Asiato.create(user_id: 2,  event_id:5  )
Asiato.create(user_id: 2,  event_id:6  )
Asiato.create(user_id: 2,  event_id:7  )
Asiato.create(user_id: 2,  event_id:8  )
Asiato.create(user_id: 2,  event_id:9  )
Asiato.create(user_id: 2,  event_id:10 )
Asiato.create(user_id: 2,  event_id:11 )
PurchaseHistory.create(user_id: 1, send_address: "東京都渋谷区神南",  send_name: "テストさん",            send_postal_code: "3501100", send_status: "受注",       purchase_at: "2018-12-1"  )
PurchaseHistory.create(user_id: 1, send_address: "東京都港区六本木",  send_name: "ディーエムエム",        send_postal_code: "1111111", send_status: "受注",       purchase_at: "2018-12-24" )
PurchaseHistory.create(user_id: 1, send_address: "東京都港区六本木",  send_name: "ディーエムエム",        send_postal_code: "1111111", send_status: "商品準備中", purchase_at: "2018-12-10" )
PurchaseHistory.create(user_id: 1, send_address: "東京都港区六本木",  send_name: "ディーエムエム",        send_postal_code: "1111111", send_status: "出荷済み",   purchase_at: "2018-3-3"   )
PurchaseHistory.create(user_id: 1, send_address: "東京都港区六本木",  send_name: "ディーエムエム",        send_postal_code: "1111111", send_status: "出荷済み",   purchase_at: "2018-5-5"   )
PurchaseHistory.create(user_id: 2, send_address: "東京都港区六本木",  send_name: "ディーエムエム",        send_postal_code: "1111111", send_status: "出荷済み",   purchase_at: "2018-5-5")
PurchaseItem.create(purchase_history_id: 1, purchase_cd_price: 9000, purchase_cd_quantity:  2,   cd_id:  6, purchase_cd_title: "僕の頭はお花畑"  )
PurchaseItem.create(purchase_history_id: 1, purchase_cd_price: 1000, purchase_cd_quantity:  4,   cd_id:  9, purchase_cd_title: "「rails db:migrate」で大体のエラーなおる。" )
PurchaseItem.create(purchase_history_id: 1, purchase_cd_price: 1632, purchase_cd_quantity:  1,   cd_id:  1, purchase_cd_title: "裸眼のメンターさん大体イケメン")
PurchaseItem.create(purchase_history_id: 1, purchase_cd_price: 1980, purchase_cd_quantity:  2,   cd_id:  5, purchase_cd_title: "ケニアに帰りたい")
PurchaseItem.create(purchase_history_id: 2, purchase_cd_price: 1250, purchase_cd_quantity:  3,   cd_id:  8, purchase_cd_title: "僕が小便したら、虹がかかる")
PurchaseItem.create(purchase_history_id: 2, purchase_cd_price: 4000, purchase_cd_quantity:  4,   cd_id:  4, purchase_cd_title: "スイカに塩かけて食べるやつは邪道"  )
PurchaseItem.create(purchase_history_id: 3, purchase_cd_price: 1800, purchase_cd_quantity: 11,   cd_id:  2, purchase_cd_title: "ラーメンとライス一緒に食べるやつは邪道" )
PurchaseItem.create(purchase_history_id: 5, purchase_cd_price: 1987, purchase_cd_quantity:  4,   cd_id:  9, purchase_cd_title: "「rails db:migrate」で大体のエラーなおる。" )
PurchaseItem.create(purchase_history_id: 6, purchase_cd_price: 1567, purchase_cd_quantity:  4,   cd_id: 10, purchase_cd_title: "自慢なんですが僕、鼻毛出たことありません" )
PurchaseItem.create(purchase_history_id: 6, purchase_cd_price: 3243, purchase_cd_quantity:  4,   cd_id:  1, purchase_cd_title: "「rails db:migrate」で大体のエラーなおる。" )

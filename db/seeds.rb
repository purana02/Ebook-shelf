# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
  email: 'admin@admin',
  password: 'adminadmin'
)

Customer.create!(
 [
  {email: 'olivia@example.com', nickname: 'Olivia', password: 'olivia'},
  {email: 'james@example.com', nickname: 'James', password: 'james!'},
  {email: 'tom@example.com', nickname: 'トム', password: 'tomtom'},
  {email: 'happy@example.com', nickname: 'happy', password: 'happy!'},
  {email: 'kashiwa@example.com', nickname: '柏', password: 'kashiwa'},
  {email: 'usagi@example.com', nickname: 'うさぎ', password: 'usagi!'}
  ]
 )

Genre.create!(
 [
   {name: '少年/青年'},
   {name: '少女/女性'},
   {name: 'BL'},
   {name: '小説/ライトノベル'}
  ]
)

Site.create!(
 [
   {name: 'BookLive'},
   {name: 'ebookjapan'},
   {name: 'コミックシーモア'},
   {name: 'Kindleストア'},
   {name: 'アニメイトブックス'},
   {name: 'Ameba漫画'},
   {name: 'まんが王国'},
   {name: 'Renta!'},
   {name: 'ブックパス'},
   {name: 'Book☆︎Walker!'},
   {name: 'honto'},
   {name: 'DMMブックス'},
   {name: 'コミックフェスタ'},
   {name: 'ピッコマ'},
   {name: 'LINEマンガ'},
   {name: 'めちゃコミック'},
   {name: '楽天kobo'},
   {name: 'dbook'},
   {name: 'その他'}
  ]
)

Tag.create!(
 [
  {name: "面白い"},{name: "冒険"},{name: "学園"},{ name: "恋愛"},{name: "あやかし"},{name: "ファンタジー"},
  {name: "フルカラー"},{name: "死に戻り"},{name: "貴族"},{name: "王族"},{name: "子育て"},{name: "王女・姫"},
  {name: "転生"},{name: "王族・貴族"},{name: "異世界"},{name: "日常"},{name: "ラブコメ"},{name: "部活"},
  {name: "ゲーム世界"},{name: "高校生"},{name: "同居"},{name: "結婚"},{name: "異能"},{name: "聖女"},
  {name: "悪役令嬢"},{name: "音楽"},{name: "バンド"},{name: "ミステリー"},{name: "サスペンス"},{name: "師弟"},
  {name: "剣術"},{name: "シスコン"},{name: "コメディー"},{name: "オフィスラブ"},{name: "アンソロジー"},{name: "入れ替わり"},
  {name: "スポーツ"},{name: "サッカー"},{name: "海賊"},{name: "スパイ"},{name: "超能力"},{name: "家族"},
  {name: "男子高校生"},{name: "青春"},{name: "チート"},{name: "JK"},{name: "家庭"},{name: "お仕事"},
  {name: "ヤクザ"},{name: "動物"},{name: "ホスト"}
  ]
 )

 Comic.create!(
  [
   {genre_id: 1, title: "ワンピース"},{genre_id: 1, title: "結界師"},{genre_id: 2, title: "狂った王女にはワケがある"},{genre_id: 2, title: "皇帝の子供を隠す方法"},{genre_id: 2, title: "屋根裏部屋の皇女様"},
   {genre_id: 2, title: "ジャンル変えさせて頂きます！"},{genre_id: 2, title: "今世は当主になります"},{genre_id: 2, title: "主人公の養女になりました"},{genre_id: 2, title: "実は私が本物だった"},{genre_id: 2, title: "恋に無駄口"},
   {genre_id: 2, title: "転生悪役幼女は最強パパの愛娘になりました"},{genre_id: 2, title: "野良猫と狼"},{genre_id: 2, title: "転生したら推しの母になりました"},{genre_id: 2, title: "身代わりの花嫁は不器用な辺境伯に溺愛される"},{genre_id: 2, title: "接近不可レディー"},
   {genre_id: 1, title: "完璧すぎて可愛げがないと公約破棄された聖女は隣国に売られる"},{genre_id: 2, title: "継母だけど娘が可愛すぎる"},{genre_id: 2, title: "旦那様、もう一度結婚してください"},{genre_id: 1, title: "伯爵家の暴れん坊になった"},{genre_id: 2, title: "踏んだり、蹴ったり、愛したり"},
   {genre_id: 2, title: "覆面系ノイズ"},{genre_id: 2, title: "余命わずかの脇役令嬢"},{genre_id: 2, title: "ダークヒーローの娘になる方法"},{genre_id: 2, title: "うちの執事が言うことには"},{genre_id: 2, title: "虐げられ令嬢とケガレ侯爵"},
   {genre_id: 1, title: "片田舎のおっさん、剣聖になる"},{genre_id: 2, title: "王太子に婚約破棄されたので、もうバカのふりはやめようと思います"},{genre_id: 2, title: "可愛い妹に何してくれてんだこの野郎"},{genre_id: 2, title: "人形聖女は笑わない"},{genre_id: 1, title: "歌舞伎町の嬢王アイナ、究極のスキルで異世界の王になる。"},
   {genre_id: 2, title: "聖女をクビになったら、なぜか幼女化して魔王のペットになりました。"},{genre_id: 2, title: "木更津くんの××が見たい"},{genre_id: 2, title: "訳あり令嬢でしたが、溺愛されて今では幸せです"},{genre_id: 3, title: "ラブインダルジュ"},{genre_id: 3, title: "この先は配信できません"},
   {genre_id: 2, title: "捨てられた皇妃"},{genre_id: 2, title: "愛でて、触って、甘やかして。"},{genre_id: 2, title: "結界師の一輪華"},{genre_id: 2, title: "鬼の花嫁"},{genre_id: 4, title: "わたしの幸せな結婚"},
   {genre_id: 2, title: "MR.マロウブルー"},{genre_id: 1, title: "ブルーロック"},{genre_id: 1, title: "SPY×FAMILY"},{genre_id: 1, title: "JKハルは異世界で娼婦になった"},{genre_id: 2, title: "おうちの魔法使い"},
   {genre_id: 3, title: "陰キャな僕が双子に愛される理由"},{genre_id: 3, title: "スウィートルームエスケイプ"},{genre_id: 3, title: "夜分に吸血失礼します。"},{genre_id: 3, title: "地雷系彼氏すずくん"},{genre_id: 3, title: "目黒と秋野は気づかない"},
   {genre_id: 3, title: "偲べば恋"},{genre_id: 3, title: "ご馳走様が聞こえない！"},{genre_id: 2, title: "どうせ捨てられるのなら、最後に好きにさせていただきます"},{genre_id: 3, title: "溺愛スリーピングボイス"},{genre_id: 3, title: "異世界の沙汰は社畜次第"},
   {genre_id: 1, title: "任侠転生-異世界のヤクザ姫-"},{genre_id: 3, title: "ブラットテイマー/キング"},{genre_id: 2, title: "DOG SIGNAL"},{genre_id: 1, title: "星屑の王子様"},{genre_id: 2, title: "ハコニワノイエ"},
   {genre_id: 3, title: "もっと愛して、運命にして"},{genre_id: 2, title: "王様に捧ぐ薬指"},{genre_id: 2, title: "はにかむハニー"}
   ]
  )

Tagging.create!(
  [
   {tag_id: 1, comic_id: 1},{tag_id: 2, comic_id: 1},{tag_id: 3, comic_id: 2},{tag_id: 4, comic_id: 2},{tag_id: 5, comic_id: 2},{tag_id: 6, comic_id: 3},{tag_id: 7, comic_id: 3},{tag_id: 8, comic_id: 3},{tag_id: 4, comic_id: 3},{tag_id: 6, comic_id: 4},
   {tag_id: 7, comic_id: 4},{tag_id: 4, comic_id: 4},{tag_id: 9, comic_id: 4},{tag_id: 10, comic_id: 4,},{tag_id: 11, comic_id: 4},{tag_id: 4, comic_id: 5},{tag_id: 7, comic_id: 5},{tag_id: 12, comic_id: 5},{tag_id: 6, comic_id: 5},{tag_id: 15, comic_id: 6},
   {tag_id: 7, comic_id: 6},{tag_id: 4, comic_id: 6},{tag_id: 4, comic_id: 7},{tag_id: 7, comic_id: 7},{tag_id: 13, comic_id: 7},{tag_id: 8, comic_id: 7},{tag_id: 10, comic_id: 7},{tag_id: 8, comic_id: 8},{tag_id: 6, comic_id: 8},{tag_id: 7, comic_id: 8},
   {tag_id: 16, comic_id: 8},{tag_id: 11, comic_id: 8},{tag_id: 13, comic_id: 8},{tag_id: 9, comic_id: 8},{tag_id: 6, comic_id: 9},{tag_id: 8, comic_id: 9},{tag_id: 7, comic_id: 9},{tag_id: 9, comic_id: 9},{tag_id: 4, comic_id: 10},{tag_id: 17, comic_id: 10},
   {tag_id: 18, comic_id: 10},{tag_id: 6, comic_id: 11},{tag_id: 13, comic_id: 11},{tag_id: 15, comic_id: 11},{tag_id: 19, comic_id: 11},{tag_id: 20, comic_id: 12},{tag_id: 4, comic_id: 12},{tag_id: 21, comic_id: 12},{tag_id: 6, comic_id: 13},{tag_id: 15, comic_id: 13},
   {tag_id: 13, comic_id: 13},{tag_id: 7, comic_id: 13},{tag_id: 9, comic_id: 13},{tag_id: 4, comic_id: 14},{tag_id: 22, comic_id: 14},{tag_id: 9, comic_id: 14},{tag_id: 6, comic_id: 15},{tag_id: 8, comic_id: 15},{tag_id: 23, comic_id: 15},{tag_id: 7, comic_id: 15},
   {tag_id: 6, comic_id: 16},{tag_id: 24, comic_id: 16},{tag_id: 13, comic_id: 17},{tag_id: 9, comic_id: 17},{tag_id: 10, comic_id: 17},{tag_id: 7, comic_id: 17},{tag_id: 25, comic_id: 17},{tag_id: 7, comic_id: 18},{tag_id: 8, comic_id: 18},{tag_id: 4, comic_id: 18},
   {tag_id: 9, comic_id: 18},{tag_id: 22, comic_id: 18},{tag_id: 6, comic_id: 19},{tag_id: 7, comic_id: 19},{tag_id: 13, comic_id: 19},{tag_id: 15, comic_id: 19},{tag_id: 4, comic_id: 20},{tag_id: 17, comic_id: 20},{tag_id: 4, comic_id: 21},{tag_id: 26, comic_id: 21},
   {tag_id: 20, comic_id: 21},{tag_id: 27, comic_id: 21},{tag_id: 4, comic_id: 22},{tag_id: 7, comic_id: 22},{tag_id: 9, comic_id: 22},{tag_id: 22, comic_id: 23},{tag_id: 6, comic_id: 22},{tag_id: 6, comic_id: 23},{tag_id: 13, comic_id: 23},{tag_id: 7, comic_id: 23},
   {tag_id: 15, comic_id: 23},{tag_id: 28, comic_id: 24},{tag_id: 29, comic_id: 24},{tag_id: 9, comic_id: 25},{tag_id: 4, comic_id: 25},{tag_id: 30, comic_id: 26},{tag_id: 31, comic_id: 26},{tag_id: 4, comic_id: 27},{tag_id: 9, comic_id: 27},{tag_id: 10, comic_id: 27},
   {tag_id: 4, comic_id: 28},{tag_id: 9, comic_id: 28},{tag_id: 10, comic_id: 28},{tag_id: 32, comic_id: 28},{tag_id: 24, comic_id: 29},{tag_id: 6, comic_id: 29},{tag_id: 10, comic_id: 29},{tag_id: 9, comic_id: 29},{tag_id: 15, comic_id: 30},{tag_id: 13, comic_id: 30},
   {tag_id: 6, comic_id: 30},{tag_id: 33, comic_id: 31},{tag_id: 24, comic_id: 31},{tag_id: 6, comic_id: 31},{tag_id: 17, comic_id: 32},{tag_id: 4, comic_id: 32},{tag_id: 34, comic_id: 32},{tag_id: 25, comic_id: 33},{tag_id: 6, comic_id: 33},{tag_id: 15, comic_id: 33},
   {tag_id: 13, comic_id: 33},{tag_id: 6, comic_id: 36},{tag_id: 13, comic_id: 36},{tag_id: 8, comic_id: 36},{tag_id: 9, comic_id: 36},{tag_id: 4, comic_id: 37},{tag_id: 34, comic_id: 37},{tag_id: 4, comic_id: 38},{tag_id: 6, comic_id: 38},{tag_id: 5, comic_id: 38},
   {tag_id: 4, comic_id: 39},{tag_id: 5, comic_id: 39},{tag_id: 22, comic_id: 39},{tag_id: 22, comic_id: 40},{tag_id: 4, comic_id: 40},{tag_id: 23, comic_id: 40},{tag_id: 6, comic_id: 40},{tag_id: 4, comic_id: 41},{tag_id: 36, comic_id: 41},{tag_id: 3, comic_id: 41},
   {tag_id: 37, comic_id: 42},{tag_id: 38, comic_id: 42},{tag_id: 20, comic_id: 42},{tag_id: 39, comic_id: 1,},{tag_id: 40, comic_id: 43},{tag_id: 41, comic_id: 43},{tag_id: 42, comic_id: 43},{tag_id: 43, comic_id: 10},{tag_id: 44, comic_id: 10},{tag_id: 15, comic_id: 44},
   {tag_id: 13, comic_id: 44},{tag_id: 44, comic_id: 45},{tag_id: 46, comic_id: 44},{tag_id: 47, comic_id: 45},{tag_id: 11, comic_id: 45},{tag_id: 48, comic_id: 45},{tag_id: 4, comic_id: 53},{tag_id: 9, comic_id: 53},{tag_id: 49, comic_id: 56},{tag_id: 13, comic_id: 56},
   {tag_id: 10, comic_id: 56},{tag_id: 47, comic_id: 58},{tag_id: 50, comic_id: 58},{tag_id: 51, comic_id: 59},{tag_id: 42, comic_id: 60},{tag_id: 22, comic_id: 62},{tag_id: 4, comic_id: 62},{tag_id: 48, comic_id: 62},{tag_id: 20, comic_id: 63},{tag_id: 4, comic_id: 63},
   {tag_id: 44, comic_id: 63}
   ]
  )

ComicEachSite.create!(
 [
  {comic_id: 1, site_id: 1},{comic_id: 2, site_id: 1},{comic_id: 3, site_id: 14},{comic_id: 4, site_id: 14},{comic_id: 5, site_id: 14},{comic_id: 6, site_id: 14},{comic_id: 7, site_id: 14},{comic_id: 8, site_id: 14},{comic_id: 9, site_id: 14},{comic_id: 10, site_id: 14},
  {comic_id: 11, site_id: 14},{comic_id: 12, site_id: 14},{comic_id: 13, site_id: 14},{comic_id: 15, site_id: 14},{comic_id: 16, site_id: 14},{comic_id: 17, site_id: 14},{comic_id: 18, site_id: 14},{comic_id: 19, site_id: 14},{comic_id: 20, site_id: 14,},{comic_id: 14, site_id: 14},
  {comic_id: 21, site_id: 14},{comic_id: 22, site_id: 14},{comic_id: 23, site_id: 14},{comic_id: 24, site_id: 14},{comic_id: 25, site_id: 1},{comic_id: 26, site_id: 1},{comic_id: 27, site_id: 1},{comic_id: 28, site_id: 1},{comic_id: 29, site_id: 1},{comic_id: 30, site_id: 3},
  {comic_id: 31, site_id: 3},{comic_id: 32, site_id: 3},{comic_id: 33, site_id: 3},{comic_id: 34, site_id: 3},{comic_id: 35, site_id: 3},{comic_id: 36, site_id: 3},{comic_id: 37, site_id: 3},{comic_id: 38, site_id: 3},{comic_id: 39, site_id: 3},{comic_id: 40, site_id: 4},
  {comic_id: 41, site_id: 4},{comic_id: 42, site_id: 18},{comic_id: 1, site_id: 19},{comic_id: 43, site_id: 18},{comic_id: 10, site_id: 7},{comic_id: 44, site_id: 7},{comic_id: 45, site_id: 7},{comic_id: 46, site_id: 7},{comic_id: 47, site_id: 7},{comic_id: 48, site_id: 8},
  {comic_id: 49, site_id: 8},{comic_id: 50, site_id: 8},{comic_id: 51, site_id: 8},{comic_id: 52, site_id: 8},{comic_id: 53, site_id: 8},{comic_id: 54, site_id: 8},{comic_id: 55, site_id: 10},{comic_id: 56, site_id: 12},{comic_id: 57, site_id: 12},{comic_id: 58, site_id: 12},
  {comic_id: 59, site_id: 12},{comic_id: 60, site_id: 12},{comic_id: 61, site_id: 12},{comic_id: 62, site_id: 16},{comic_id: 63, site_id: 16}
  ]
  )

HavingComic.create!(
 [
  {comic_id: 1, site_id: 1, customer_id: 1},{comic_id: 2, site_id: 1, customer_id: 1},{comic_id: 3, site_id: 14, customer_id: 5},{comic_id: 4, site_id: 14, customer_id: 5},{comic_id: 5, site_id: 14, customer_id: 5},{comic_id: 6, site_id: 14, customer_id: 5},{comic_id: 7, site_id: 14, customer_id: 5},
  {comic_id: 8, site_id: 14, customer_id: 5},{comic_id: 9, site_id: 14, customer_id: 5},{comic_id: 10, site_id: 14, customer_id: 5},{comic_id: 11, site_id: 14, customer_id: 5},{comic_id: 12, site_id: 14, customer_id: 5},{comic_id: 13, site_id: 14, customer_id: 5},{comic_id: 14, site_id: 14, customer_id: 5},
  {comic_id: 15, site_id: 14, customer_id: 5},{comic_id: 16, site_id: 14, customer_id: 5},{comic_id: 17, site_id: 14, customer_id: 5},{comic_id: 18, site_id: 14, customer_id: 5},{comic_id: 19, site_id: 14, customer_id: 5},{comic_id: 20, site_id: 14, customer_id: 5},{comic_id: 21, site_id: 14, customer_id: 5},
  {comic_id: 22, site_id: 14, customer_id: 5},{comic_id: 23, site_id: 14, customer_id: 5},{comic_id: 24, site_id: 14, customer_id: 5},{comic_id: 25, site_id: 1, customer_id: 2},{comic_id: 26, site_id: 1, customer_id: 2},{comic_id: 27, site_id: 1, customer_id: 2},{comic_id: 28, site_id: 1, customer_id: 2},
  {comic_id: 29, site_id: 1, customer_id: 2},{comic_id: 30, site_id: 3, customer_id: 3},{comic_id: 31, site_id: 3, customer_id: 3},{comic_id: 32, site_id: 3, customer_id: 3},{comic_id: 33, site_id: 3, customer_id: 3},{comic_id: 34, site_id: 3, customer_id: 3},{comic_id: 35, site_id: 3, customer_id: 3},
  {comic_id: 36, site_id: 3, customer_id: 3},{comic_id: 37, site_id: 3,  customer_id: 3},{comic_id: 38, site_id: 3, customer_id: 3},{comic_id: 39, site_id: 3, customer_id: 3},{comic_id: 40, site_id: 4, customer_id: 4},{comic_id: 41, site_id: 4, customer_id: 4},{comic_id: 42, site_id: 18, customer_id: 6},
  {comic_id: 1, site_id: 18, customer_id: 6},{comic_id: 43, site_id: 18, customer_id: 6},{comic_id: 10, site_id: 7, customer_id: 5},{comic_id: 44, site_id: 7, customer_id: 5},{comic_id: 45, site_id: 7, customer_id: 5},{comic_id: 46, site_id: 7, customer_id: 5},{comic_id: 47, site_id: 7, customer_id: 5},
  {comic_id: 48, site_id: 8, customer_id: 1},{comic_id: 49, site_id: 8,  customer_id: 1},{comic_id: 50, site_id: 8, customer_id: 1},{comic_id: 51, site_id: 8, customer_id: 1},{comic_id: 52, site_id: 8, customer_id: 1},{comic_id: 53, site_id: 8, customer_id: 1},{comic_id: 54, site_id: 8, customer_id: 1},
  {comic_id: 55, site_id: 10, customer_id: 2},{comic_id: 56, site_id: 12, customer_id: 2},{comic_id: 57, site_id: 12, customer_id: 2},{comic_id: 58, site_id: 12, customer_id: 2},{comic_id: 59, site_id: 12, customer_id: 2},{comic_id: 60, site_id: 12, customer_id: 2},{comic_id: 61, site_id: 12, customer_id: 2},
  {comic_id: 62, site_id: 16, customer_id: 3},{comic_id: 63, site_id: 16, customer_id: 3}
  ]
 )

Review.create!(
 [
  {customer_id: 1, comic_id: 1, title: "a", body: "aa", evaluation: 4.0, exists_spoiler: false, is_reported: false, is_publishing: true, score: 0.2, magnitude: 0.0},
  {customer_id: 1, comic_id: 1, title: "test", body: "test", evaluation: 1.0, exists_spoiler: true, is_reported: true, is_publishing: true, score: 0.0, magnitude: 0.0},
  {customer_id: 1, comic_id: 23, title: "test", body: "test", evaluation: 4.0, exists_spoiler: false, is_reported: false, is_publishing: true, score: 0.0, magnitude: 0.0},
  {customer_id: 1, comic_id: 6, title: "面白かった", body: "面白かった", evaluation: 4.0, exists_spoiler: true, is_reported: false, is_publishing: true, score: 0.9, magnitude: 0.0},
  {customer_id: 1, comic_id: 2, title: "面白かった", body: "", evaluation: 5.0, exists_spoiler: false, is_reported: false, is_publishing: true, score: 0.0, magnitude: 0.0},
  {customer_id: 1, comic_id: 21, title: "面白かった", body: "恋に無駄口の作者の作品", evaluation: 5.0, exists_spoiler: false, is_reported: false, is_publishing: true,score: 0.1, magnitude: 0.0},
  {customer_id: 2, comic_id: 6, title: "面白かった", body: "", evaluation: 4.0, exists_spoiler: false, is_reported: false, is_publishing: true, score: 0.0, magnitude: 0.0},
  {customer_id: 2, comic_id: 13, title: "面白かった", body: "休載中です。続きが読みたい", evaluation: 5.0, exists_spoiler: true, is_reported: false, is_publishing: true, score:0.3, magnitude: 0.0},
  {customer_id: 2, comic_id: 8, title: "面白かった", body: "おすすめ", evaluation: 5.0, exists_spoiler: false, is_reported: false, is_publishing: true, score:0.9, magnitude: 0.0},
  {customer_id: 3, comic_id: 8, title: "面白かった", body: "一気に読んでしまった", evaluation: 5.0, exists_spoiler: false, is_reported: false, is_publishing: true, score: 0.8, magnitude: 0.0},
  {customer_id: 3, comic_id: 16, title: "test", body: "", evaluation: 4.0, exists_spoiler: false, is_reported: false, is_publishing: true, score: 0.0, magnitude: 0.0},
  {customer_id: 3, comic_id: 43, title: "面白かった", body: "面白い", evaluation: 5.0, exists_spoiler: false, is_reported: false, is_publishing: true, score: 0.9, magnitude: 0.0},
  {customer_id: 4, comic_id: 4, title: "test", body: "test", evaluation: 4.0, exists_spoiler: false, is_reported: false, is_publishing: true, score: 0.0, magnitude: 0.0},
  {customer_id: 4, comic_id: 7, title: "test", body: "面白い。早く続きが読みたい", evaluation: 5.0, exists_spoiler: false, is_reported: false, is_publishing: true, score: 0.9, magnitude: 0.0},
  {customer_id: 4, comic_id: 20, title: "面白かった", body: "面白かった", evaluation: 5.0, exists_spoiler: false, is_reported: false, is_publishing: true, score: 0.9, magnitude: 0.0}
  ]
 )

Comment.create!(
 [
  {review_id: 5, customer_id: 8, body: "それな", is_reported: true, is_publishing: false, score: 0.4, magnitude: 0.0},
  {review_id: 4, customer_id: 6, body: "aaaa", is_reported: true, is_publishing: false, score:0.1, magnitude: 0.0},
  {review_id: 6, customer_id: 1, body: "aaaaa", is_reported: false, is_publishing: true,score:0.3, magnitude: 0.0},
  {review_id: 10, customer_id: 2, body: "全て面白い", is_reported: false, is_publishing: true, score: 0.9, magnitude: 0.0},
  ]
 )
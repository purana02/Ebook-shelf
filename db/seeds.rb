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
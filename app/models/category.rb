class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '購入方法' },
    { id: 3, name: 'サイト' },
    { id: 4, name: 'アプリ' },
    { id: 5, name: '特別割引' },
    { id: 6, name: '期間限定' },
    { id: 7, name: '特典' },
    { id: 8, name: 'キャッシュバック' },
    { id: 9, name: 'ポイント' },
    { id: 10, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :infomations
end

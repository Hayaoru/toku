#READ ME

##アプリ名：得買い

##概要
物などをお得に購入する方法を集める口コミサイトです。
このサイトを見れば一番お得に買い物ができるかわかることを目的として作成しています。

お得な情報の投稿、編集、削除及びユーザー登録ができます。

##制作背景
昨今ネット上で商品を購入するのに広告や動画で色々な情報があふれており本当にお得なのか、一番お得なのはどれなのかわかりづらくなっていると思います。
そこで一つのサイトとしてまとめて比較までできるようにすればいいのではないかと考えました。
また投稿した情報が閲覧されることでポイント付与することで投稿するメリットを付けることができれば情報がより集まると考えております。

##DEMO

ホームイメージ
![ホームイメージ](./images/2021-03-04 13.58.34.png)

投稿内容イメージ
![投稿内容](./images/2021-03-04 14.00.27.png)

##実装予定
キーワード検索機能、カテゴリ検索機能、お気に入り機能、いいね機能
Docker環境、AWS EC2導入

##テーブル設計

## users テーブル

| Column             | Type   | Options   |
| ------------------ | ------ | --------- |
| nickname           | string | not null  |
| encrypted_password | string | not null  |
| email              | string | not null  |

### Association
- has_many :infomaitons


### infomation テーブル

| Column        | Type       | Options            |
| ------------- | ---------- | ------------------ |
| title         | string     | not null           |
| main          | text       | not null           |
| category_id   | integer    | not null           |
| url           | text       | not null           |
| user          | references | foreign_key: true  |

### Association
- belongs_to :user
- has_one_attached   :image

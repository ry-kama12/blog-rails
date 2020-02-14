# README

# Name
ブログアプリ 

# 開発環境
##使用言語
・ruby '2.5.1'
・rails '~> 5.2.4', '>= 5.2.4.1'
## 使用技術
### デザイン
・bootstrap　'4.4.1'
### 画像投稿機能
・'carrierwave'
・'mini_magick'
### ログイン機能
・'devise'
### DB
・'mysql2'

# 内容
今まで勉強してきたことを別のアプリとして形にするため、４つの基本機能を実装したブログアプリを作りました。
## 基本機能４つ
１　会員登録、ログイン/ログアウト機能
２　記事・画像投稿機能
３　記事に対するコメント機能
４　いいね機能

# DB設計

## Usersテーブル 
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|
### Association
- has_many :posts
- has_many :comments
- has_many :liked_posts, through: :comments, source: :post
- has_many :likes, dependent: :destroy
- has_many :liked_posts, through: :likes, source: :post

## Postsテーブル
|------|----|-------|
|title|string|null: false|
|content|text|null: false|
### Association
- belongs_to :user
- has_many :images
- has_many :comments
- has_many :liked_posts, through: :comments, source: :user
- has_many :likes
- has_many :liked_users, through: :likes, source: :user

## Imagesテーブル
|------|----|-------|
|image|string|
### Association
- belongs_to :post, optional: true
- mount_uploader :image, ImageUploader

## Likesテーブル
|------|----|-------|
|user_id|reference|
|post_id|reference|
### Association
- belongs_to :user
- belongs_to :post

## Commentsテーブル
|------|----|-------|
|message|text|

### Association
- belongs_to :user
- belongs_to :post

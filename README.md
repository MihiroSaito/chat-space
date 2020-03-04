# README

# chat-space DB設計

## userテーブル
|column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|

### Association
- has_many :messages 
- has_many  :groups,  through:  :group_users
- belongs_to :groups

## messagesテーブル
|column|Type|Options|
|------|----|-------|
|body|text|null: false|
|image|string|
|group_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

## groupsテーブル
|column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- belongs_to :user
- has_many :messages
- has_many :user, through:  :group_users

## group_usersテーブル
|column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :groups

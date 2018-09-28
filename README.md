# README

* Database creation

https://gyazo.com/6cadcc8460d2d58d95496ce726a95cd3

## User
|Column|Type|Options|
|------|----|-------|
|first-name|string|null:false
|last-name|string|null:false
|email|string|null:false
|password|integer|null:false
|birthday-year|integer|null:false
|birthday-month|integer|null:false
|birthday-day|integer|null:false
|gender|integer|null:false
|language|integer|null:false
|currency|integer|null:false
|address|string|null:false
|introduction|string|null:false
|guest_id|integer|null:false
|host_id|integer|

### association
```
has_many :rooms
has_many :reservations
```

## Room
|Column|Type|Options|
|------|----|-------|
|host_id|integer|null:false
|location|integer|null:false
|post-number|text|null:false
|prefecture|text|null:false
|city|text|null:false
|address|text|null:false
|must-item|integer|

### association
```
has_many :reviews
has_many :reservations
has_many :filters
```

## Filter
|category|integer|null:false
|room-type|integer|null:false
|capacity|integer|null:false
|bedroom-counter|integer|null:false
|bathroom-counter|float|null:false
|wifi|integer|
|shampoo|integer|
|closet|integer|
|television|integer|
|heater|integer|
|aircon|integer|
|breakfast|integer|
|pet|integer|
|iron|integer|
|image|string|
|subject|text|null:false
|title|text|null:false
|price|integer|null:false
|currency|integer|null:false
|rule-pet|integer|
|rule-smoking|integer|
|rule-party|integer|
|prior-stair|integer|
|prior-noize|integer|
|prior-pet|integer|
|prior-parking|integer|
|prior-sharespace|integer|
|prior-security|integer|
|prior-guns|integer|

### association
```
belongs_to :room
```

## reservations
|Column|Type|Options|
|------|----|-------|
|check-in|date|
|check-out|date|
|price_per_night|integer|
|user_id|references|null: false, foreign_key: true|
|room_id|references|null: false, foreign_key: true|

### association
```
has_one :gest-host
belongs_to :room
belongs_to :user
```

## reviews
|Column|Type|Options|
|------|----|-------|
|comment|string|
|rating|integer|
|user_id|references|null: false, foreign_key: true|
|room_id|references|null: false, foreign_key: true|

### association
```
belongs_to :room
belongs_to :user
```

* 実装予定機能
  - User登録/編集/削除
    - 認証登録(email/Google/Facebook)
  - Listing登録
  - Listing掲載(View)
  - Listing検索(Search)
    - Filter検索(room-type/number/date)
  - Listing確定(Reservation)
  - Review機能

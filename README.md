# README

* Database creation

https://gyazo.com/47c942b6380e86dc227bbf87ec6cc561

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
|language|integer|
|currency|integer|
|address|string|
|introduction|string|
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
|image|string|
|subject|text|null:false
|title|text|null:false
|price|integer|null:false
|currency|integer|null:false
|filter_id|integer|foreign_key: true|
|amenity_id|integer|foreign_key: true|
|rule_id|integer|foreign_key: true|

### association
```
has_many :reviews
has_many :reservations
belongs_to :filter
belongs_to :amenity
belongs_to :rule
```

## Filter
|category|integer|null:false|
|room-type|integer|null:false|
|capacity|integer|null:false|
|bedroom-counter|integer|null:false|
|bathroom-counter|float|null:false|
|must-item|integer|
|room_id|integer|foreign_key: true|

### association
```
has_many :rooms
```

## Amenity
|wifi|integer|
|shampoo|integer|
|closet|integer|
|television|integer|
|heater|integer|
|aircon|integer|
|breakfast|integer|
|pet|integer|
|iron|integer|
|room_id|integer|foreign_key: true|

### association
```
has_many :rooms
```

## Rule
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
|room_id|integer|foreign_key: true|

### association
```
has_many :rooms
```

## reservations
|Column|Type|Options|
|------|----|-------|
|check-in|date|
|check-out|date|
|number|integer|
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

https://gyazo.com/7b82da4d9b52ae5664ac399985d22b50

## inbox
|Column|Type|Options|
|------|----|-------|
|reservation_id|references|null: false, foreign_key: true|

## user-inbox
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|inbox_id|references|null: false, foreign_key: true|

##  message
|Column|Type|Options|
|------|----|-------|
|body|string|
|gest_id|references|null: false, foreign_key: true|
|host_id|references|null: false, foreign_key: true|
|inbox_id|references|null: false, foreign_key: true|


* 実装予定機能
  - User登録/編集/削除
    - 認証登録(email/Google/Facebook)
  - Listing登録
  - Listing掲載(View)
  - Listing検索(Search)
    - Filter検索(room-type/number/date)
  - Listing確定(Reservation)
  - Review機能

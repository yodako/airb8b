class Filter < ApplicationRecord
  enum category: %w(アパート&マンション 住宅 サブユニット ユニークなお部屋 B&B デザイナーズホテル)
  enum room_type: %w(住宅全体 個室 シェアルーム)
  enum bedroom_counter: %w(1ベッドルーム 2ベッドルーム 3ベッドルーム 4ベッドルーム 5ベッドルーム 6ベッドルーム 7ベッドルーム 8ベッドルーム 9ベッドルーム 10ベッドルーム)
  has_many :rooms
end

class Room < ApplicationRecord
  belongs_to :amenity
  belongs_to :rule
  belongs_to :filter
  accepts_nested_attributes_for :amenity
  accepts_nested_attributes_for :rule
  accepts_nested_attributes_for :filter
  enum location: %w(アフガニスタン ニューヨーク インドネシア オーストラリア オランダ 象牙海岸 東京 マカオ 中国 ジャマイカ カザフスタン ヨルダン ハンガリー リビア バルバドス ベルギー ボリビア )
  enum currency: [:JPY,:AED,:ARS,:AUD,:BGN,:BRL,:CAD,:CHF,:CLP,:CNY,:COP,:CRC,:CZK,:EUR,:GBP]
end

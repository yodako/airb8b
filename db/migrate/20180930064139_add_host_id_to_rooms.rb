class AddHostIdToRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :host_id, :integer, null: false
    add_column :rooms, :location, :integer, null: false
    add_column :rooms, :post_number, :text, null: false
    add_column :rooms, :prefecture, :text, null: false
    add_column :rooms, :city, :text, null: false
    add_column :rooms, :image, :string
    add_column :rooms, :subject, :text, null: false
    add_column :rooms, :title, :text, null: false
    add_column :rooms, :price, :integer, null: false
    add_column :rooms, :currency, :integer, null: false
    add_column :rooms, :rule_id, :integer, foreign_key: true
    add_column :rooms, :amenity_id, :integer, foreign_key: true
    add_column :rooms, :filter_id, :integer, foreign_key: true
    add_column :rooms, :address, :text
    add_column :rooms, :latitude, :float
    add_column :rooms, :longitude, :float
  end
end

class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.references :user, null:false, foreign_key: true
      t.references :room, null:false, foreign_key: true
      t.date :check_in
      t.date :check_out
      t.integer :occupancy
      t.integer :price_per_night
      t.timestamps
    end
  end
end

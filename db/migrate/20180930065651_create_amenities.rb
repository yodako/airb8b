class CreateAmenities < ActiveRecord::Migration[5.2]
  def change
    create_table :amenities do |t|
      t.integer :must_item 
      t.integer :wifi
      t.integer :shampoo
      t.integer :closet
      t.integer :television
      t.integer :heater
      t.integer :aircon
      t.integer :breakfast
      t.integer :pet
      t.integer :iron
      t.timestamps
    end
  end
end

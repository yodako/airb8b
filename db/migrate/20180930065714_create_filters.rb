class CreateFilters < ActiveRecord::Migration[5.2]
  def change
    create_table :filters do |t|
      t.integer :category ,null:false
      t.integer :room_type ,null:false
      t.integer :capacity ,null:false
      t.integer :bedroom_counter ,null:false
      t.float   :bathroom_counter ,null:false
      t.timestamps
    end
  end
end

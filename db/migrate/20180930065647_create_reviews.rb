class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :comment
      t.integer :rating
      t.references :user_id, foreign_key: true
      t.references :room_id, foreign_key: true
      t.timestamps
    end
  end
end

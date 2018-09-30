class CreateRules < ActiveRecord::Migration[5.2]
  def change
    create_table :rules do |t|
      t.integer :rule_pet
      t.integer :rule_smoking
      t.integer :rule_party
      t.integer :prior_stair
      t.integer :prior_noize
      t.integer :prior_pet
      t.integer :prior_parking
      t.integer :prior_sharespace
      t.integer :prior_security
      t.integer :prior_guns
      t.timestamps
    end
  end
end

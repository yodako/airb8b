class AddFirstNameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :birthday_year, :integer, null: false
    add_column :users, :birthday_month, :integer, null: false
    add_column :users, :birthday_day, :integer, null: false
    add_column :users, :gender, :integer, null: false
    add_column :users, :language, :integer
    add_column :users, :currency, :integer
    add_column :users, :address, :string
    add_column :users, :introduction, :string
    add_column :users, :guest_id, :integer
    add_column :users, :host_id, :integer
  end
end

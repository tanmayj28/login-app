# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string  :first_name
      t.string  :last_name
      t.string  :email, null: false, unique: true
      t.string  :password_digest, null: false
      t.integer :age
      t.integer :gender
      t.string  :country

      t.timestamps
    end

    add_index :users, :age
    add_index :users, :gender
    add_index :users, :country
  end
end

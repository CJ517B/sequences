class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.integer :first_num
      t.integer :second_num
      t.integer :third_num
      t.text :result

      t.timestamps null: false
    end
  end
end

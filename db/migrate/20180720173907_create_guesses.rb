class CreateGuesses < ActiveRecord::Migration[5.2]
  def change
    create_table :guesses do |t|
      t.integer :value

      t.timestamps
    end
  end
end

class CreateReadings < ActiveRecord::Migration[6.0]
  def change
    create_table :readings do |t|
      t.integer :book_id
      t.integer :user_id
    end 
  end
end

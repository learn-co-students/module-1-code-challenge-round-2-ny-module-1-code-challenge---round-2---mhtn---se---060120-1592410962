class AuthorbooksTable < ActiveRecord::Migration[6.0]
  def change
    create_table :authorbooks do |t|
      t.integer :book_id
      t.integer :author_id
    end
  end
end

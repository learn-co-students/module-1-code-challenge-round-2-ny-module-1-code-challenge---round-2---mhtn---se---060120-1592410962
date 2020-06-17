class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :book_id
      t.integer :author_id
      
    end
    
  end
end

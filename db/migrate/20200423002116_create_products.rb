class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :artist
      t.integer :year
      t.string :album
      t.integer :price
      t.string :store
      t.string :thumb

      t.timestamps
    end
  end
end

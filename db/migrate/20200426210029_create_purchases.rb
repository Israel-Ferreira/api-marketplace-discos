class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.references :user, null: false, foreign_key: true
      t.references :cart, null: false, foreign_key: true
      t.integer :value_to_pay

      t.timestamps
    end
  end
end

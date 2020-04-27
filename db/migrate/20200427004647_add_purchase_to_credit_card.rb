class AddPurchaseToCreditCard < ActiveRecord::Migration[6.0]
  def change
    add_reference :credit_cards, :purchase, null: false, foreign_key: true
  end
end

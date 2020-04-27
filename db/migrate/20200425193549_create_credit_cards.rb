class CreateCreditCards < ActiveRecord::Migration[6.0]
  def change
    create_table :credit_cards do |t|
      t.string :c_number
      t.string :c_holder_name
      t.string :cvv
      t.string :exp_date

      t.timestamps
    end
  end
end

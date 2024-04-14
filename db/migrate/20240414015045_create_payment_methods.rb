class CreatePaymentMethods < ActiveRecord::Migration[7.1]
  def change
    create_table :payment_methods do |t|
      t.integer :card_number
      t.date :expiry_date
      t.integer :cvv
      t.references :members, null: false, foreign_key: true

      t.timestamps
    end
  end
end

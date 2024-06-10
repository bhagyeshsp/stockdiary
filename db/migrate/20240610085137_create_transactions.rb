class CreateTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :transactions do |t|
      t.references :company, null: false, foreign_key: true
      t.string :buy_sale
      t.integer :quantity
      t.decimal :price_per_unit
      t.decimal :purchase_price
      t.decimal :total_spent
      t.decimal :total_earned
      t.decimal :transaction_fees
      t.date :date
      t.text :reason
      t.text :final_verdict

      t.timestamps
    end
  end
end

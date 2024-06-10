json.extract! transaction, :id, :company_id, :buy_sale, :quantity, :price_per_unit, :purchase_price, :total_spent, :total_earned, :transaction_fees, :date, :reason, :final_verdict, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)

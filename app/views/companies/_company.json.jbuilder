json.extract! company, :id, :name, :ticker_symbol, :created_at, :updated_at
json.url company_url(company, format: :json)

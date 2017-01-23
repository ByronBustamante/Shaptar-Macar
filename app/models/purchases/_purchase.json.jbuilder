json.extract! purchase, :id, :supplier_code, :invoice_series, :invoice_number, :purchase_date, :total_purchase, :observations, :created_at, :updated_at
json.url purchase_url(purchase, format: :json)
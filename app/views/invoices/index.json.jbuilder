json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :details, :total_cents, :order_id, :stock_item_id
  json.url invoice_url(invoice, format: :json)
end

json.array!(@stock_items) do |stock_item|
  json.extract! stock_item, :id, :name, :model, :description, :legal_in_all_states
  json.url stock_item_url(stock_item, format: :json)
end

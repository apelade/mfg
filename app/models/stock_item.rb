class StockItem < ActiveRecord::Base
  has_many :invoices
  has_many :orders, :through => :invoices
end

class Order < ActiveRecord::Base
  belongs_to :customer
  has_many :invoices
  has_many :stock_items, :through => :invoices
end

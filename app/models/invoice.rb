class Invoice < ActiveRecord::Base
  belongs_to :order
  belongs_to :stock_item
end

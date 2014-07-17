class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.text :details
      t.integer :total_cents
      t.references :order, index: true
      t.references :stock_item, index: true

      t.timestamps
    end
  end
end

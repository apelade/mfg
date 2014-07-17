class CreateStockItems < ActiveRecord::Migration
  def change
    create_table :stock_items do |t|
      t.string :name
      t.string :model
      t.text :description
      t.boolean :legal_in_all_states

      t.timestamps
    end
  end
end

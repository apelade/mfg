class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.text :name
      t.text :contact_info
      t.integer :rating

      t.timestamps
    end
  end
end

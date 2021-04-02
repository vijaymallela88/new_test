class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :deal_id
      t.integer :customer_id
      t.string :address
      t.string :mobile_number

      t.timestamps
    end
  end
end

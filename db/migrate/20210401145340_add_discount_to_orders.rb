class AddDiscountToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :discount, :integer
    add_column :orders, :total_amount, :integer
  end
end

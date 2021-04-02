class AddAddressToCustomer < ActiveRecord::Migration[6.0]
  def change
    add_column :customers, :address, :string
    add_column :customers, :user_type, :string
  end
end

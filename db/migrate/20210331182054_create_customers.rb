class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :age
      t.string :mobile_number

      t.timestamps
    end
  end
end

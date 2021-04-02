class CreateDeals < ActiveRecord::Migration[6.0]
  def change
    create_table :deals do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.integer :discounted_price
      t.integer :quantity
      t.datetime :publish_date
      t.string :image
      t.integer :created_by
      t.integer :updated_by

      t.timestamps
    end
  end
end

class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :quantity
      t.belongs_to :product_category
      
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
  end
end

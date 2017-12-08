class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.belongs_to :farmer
      t.integer  :quantity
      t.integer  :quantity_in
      t.integer  :price
      t.timestamps
    end
  end
end

class CreateFarmers < ActiveRecord::Migration[5.1]
  def change
    create_table :farmers do |t|
      t.belongs_to :user
      t.timestamps
    end
  end
end

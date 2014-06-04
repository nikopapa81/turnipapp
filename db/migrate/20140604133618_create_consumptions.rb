class CreateConsumptions < ActiveRecord::Migration
  def change
    create_table :consumptions do |t|
      t.integer :item_id
      t.float :quantity
      t.boolean :waste

      t.timestamps

    end
  end
end

class CreateFoodItems < ActiveRecord::Migration
  def change
    create_table :food_items do |t|
      t.string :item_name
      t.integer :uofm_id
      t.integer :category_id
      t.integer :avg_exp_days

      t.timestamps

    end
  end
end

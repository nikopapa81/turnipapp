class AddUserIdToConsumptions < ActiveRecord::Migration
  def change
    add_column :consumptions, :user_id, :integer
  end
end

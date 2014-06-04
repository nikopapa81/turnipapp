class CreateUOfMs < ActiveRecord::Migration
  def change
    create_table :u_of_ms do |t|
      t.string :unit_name

      t.timestamps

    end
  end
end

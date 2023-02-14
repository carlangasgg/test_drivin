class CreateDeliveries < ActiveRecord::Migration[7.0]
  def change
    create_table :deliveries do |t|
      t.string :name
      t.string :deliver
      t.string :address
      t.datetime :arrival_at

      t.integer :depart_id

      t.timestamps
    end
    add_foreign_key :deliveries, :departs
  end
end

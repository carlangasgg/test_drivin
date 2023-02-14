class CreateDeparts < ActiveRecord::Migration[7.0]
  def change
    create_table :departs do |t|
      t.string :name
      t.string :manager
      t.datetime :depart_begin
      t.datetime :depart_end

      t.integer :route_id

      t.timestamps
    end
    add_foreign_key :departs, :routes
  end
end

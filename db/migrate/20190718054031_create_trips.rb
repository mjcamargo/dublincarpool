class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :date
      t.string :time
      t.string :pickup_location
      t.string :destination
      t.decimal :price
      t.integer :seats_available
      t.integer :driver_id

      t.timestamps
    end
  end
end

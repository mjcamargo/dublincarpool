class AddProfileToTrips < ActiveRecord::Migration[5.2]
  def change
    add_reference :trips, :profile, foreign_key: true
  end
end

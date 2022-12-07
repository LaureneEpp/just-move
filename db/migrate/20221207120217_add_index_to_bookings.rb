class AddIndexToBookings < ActiveRecord::Migration[7.0]
  def change
    add_index :bookings, [:client_id, :schedule_id], unique: true
  end
end

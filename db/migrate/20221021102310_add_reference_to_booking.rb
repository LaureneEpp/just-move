class AddReferenceToBooking < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :client
  end
end

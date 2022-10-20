class DropTables < ActiveRecord::Migration[7.0]
  def change
    drop_table :accounts
    drop_table :bookings
    drop_table :clients
    drop_table :lesson_payments
    drop_table :schedules
    drop_table :trainers
  end
end

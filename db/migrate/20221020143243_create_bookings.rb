class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :status
      t.string :title
      t.integer :cost
      t.datetime :start
      t.text :cancellation_reason
      t.boolean :refunded
      t.references :trainer, null: false, foreign_key: true
      t.references :schedule, null: false, foreign_key: true
      t.references :lesson, null: false, foreign_key: true

      t.timestamps
    end
  end
end

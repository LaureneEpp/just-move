class DropTables < ActiveRecord::Migration[7.0]
  def change
    drop_table :accounts
    drop_table :lesson_payments
  end
end

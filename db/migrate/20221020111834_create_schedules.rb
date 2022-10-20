class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.string :title
      t.datetime :start
      t.datetime :end
      t.integer :trainer_id
      t.integer :account_id

      t.timestamps
    end
    add_index :schedules, :trainer_id
    add_index :schedules, :account_id
  end
end

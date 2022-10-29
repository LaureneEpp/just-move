class ChangeTimeToSchedules < ActiveRecord::Migration[7.0]
  def change
    remove_column :schedules, :start
    remove_column :schedules, :end
    add_column :schedules, :date, :date
    add_column :schedules, :start, :time
    add_column :schedules, :end, :time
  end
end

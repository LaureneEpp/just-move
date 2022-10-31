class RenameTimeFromSchedule < ActiveRecord::Migration[7.0]
  def change
    remove_column :schedules, :date
    remove_column :schedules, :start
    remove_column :schedules, :end
    add_column :schedules, :start_time, :datetime
    add_column :schedules, :end_time, :datetime
  end
end

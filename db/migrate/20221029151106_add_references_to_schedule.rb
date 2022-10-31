class AddReferencesToSchedule < ActiveRecord::Migration[7.0]
  def change
    add_reference :schedules, :lesson
  end
end

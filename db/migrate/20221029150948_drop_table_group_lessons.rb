class DropTableGroupLessons < ActiveRecord::Migration[7.0]
  def change
    drop_table :group_lessons
  end
end

class RemoveReferenceToGroupLessons < ActiveRecord::Migration[7.0]
  def change
    remove_reference :group_lessons, :schedule
  end
end

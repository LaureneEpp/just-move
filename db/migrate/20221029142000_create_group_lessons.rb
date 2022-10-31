class CreateGroupLessons < ActiveRecord::Migration[7.0]
  def change
    create_table :group_lessons do |t|
      t.references :lesson, null: false, foreign_key: true
      t.references :schedule, null: false, foreign_key: true

      t.timestamps
    end
  end
end

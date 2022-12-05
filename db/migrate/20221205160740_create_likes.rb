class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.references :client, null: false, foreign_key: true
      t.references :lesson, null: false, foreign_key: true

      t.timestamps
    end
    # uniqueness at DB level between client & lesson
    add_index :likes, [:client_id, :lesson_id], unique: true
  end
end

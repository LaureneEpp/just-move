class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.references :client, null: false, foreign_key: true
      t.references :lesson, null: false, foreign_key: true


      t.timestamps
    end
  end
end

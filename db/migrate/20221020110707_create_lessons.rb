class CreateLessons < ActiveRecord::Migration[7.0]
  def change
    create_table :lessons do |t|
      t.string :title
      t.integer :duration
      t.integer :cost
      t.string :category
      t.string :language
      t.string :level
      t.text :description

      t.timestamps
    end
  end
end

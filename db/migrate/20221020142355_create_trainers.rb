class CreateTrainers < ActiveRecord::Migration[7.0]
  def change
    create_table :trainers do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.text :bio
      t.string :experience
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

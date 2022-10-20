class CreateTrainers < ActiveRecord::Migration[7.0]
  def change
    create_table :trainers do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.text :bio
      t.string :experience
      t.integer :user_id
      t.integer :account_id

      t.timestamps
    end
    add_index :trainers, :user_id
    add_index :trainers, :account_id
  end
end

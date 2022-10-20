class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.text :bio
      t.integer :user_id
      t.integer :account_id

      t.timestamps
    end
    add_index :clients, :user_id
    add_index :clients, :account_id
  end
end

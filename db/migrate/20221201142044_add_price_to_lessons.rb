class AddPriceToLessons < ActiveRecord::Migration[7.0]
  def change
    remove_column :lessons, :cost
    add_monetize :lessons, :price, currency: { present: false }
  end
end

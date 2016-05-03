class CreateTichets < ActiveRecord::Migration
  def change
    create_table :tichets do |t|
      t.string :name
      t.string :seat_id
      t.text :address
      t.decimal :price_paid

      t.timestamps null: false
    end
  end
end

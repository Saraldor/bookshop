class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :author
      t.string :category
      t.text :description
      t.string :condition
      t.string :typ
      t.string :titel
      t.decimal :price, precision: 5, scale: 2, default: 0

      t.timestamps
    end
  end
end

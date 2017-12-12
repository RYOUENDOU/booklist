class CreateBooklists < ActiveRecord::Migration[5.1]
  def change
    create_table :booklists do |t|
      t.string :title
      t.integer :price
      t.text :detail
      t.text :rate

      t.timestamps
    end
  end
end

class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :nickname
      t.text :body
      t.integer :booklist_id

      t.timestamps
    end
  end
end

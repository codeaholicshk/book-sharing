class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :reference_url
      t.string :suggested_by

      t.timestamps null: false
    end
    add_index :books, :name
    add_index :books, :suggested_by
  end
end

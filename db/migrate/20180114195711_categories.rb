class Categories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :company_id

      t.timestamps
    end
    add_index :categories, :company_id
  end
end

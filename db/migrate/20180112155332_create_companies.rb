class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :description
      t.datetime :founded_on

      t.timestamps
    end
  end
end

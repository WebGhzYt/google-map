class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.float :lat
      t.float :lng

      t.timestamps null: false
    end
  end
end

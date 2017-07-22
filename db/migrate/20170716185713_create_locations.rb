class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.text :name
      t.text :address
      t.text :address2
      t.text :city
      t.text :province
      t.text :country
      t.text :lat
      t.text :lon

      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.text :user
      t.text :email
      t.text :name
      t.text :phone
      t.text :address
      t.text :city
      t.text :province
      t.text :country
      t.text :postal_code
      t.text :role

      t.timestamps
    end
  end
end

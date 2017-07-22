class CreateSponsors < ActiveRecord::Migration[5.1]
  def change
    create_table :sponsors do |t|
      t.text :name
      t.references :sponsor_category, foreign_key: true
      t.integer :fee_cents
      t.text :status

      t.timestamps
    end
  end
end

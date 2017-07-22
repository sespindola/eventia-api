class CreateSponsorCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :sponsor_categories do |t|
      t.text :name

      t.timestamps
    end
  end
end

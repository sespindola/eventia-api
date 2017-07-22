class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.text :name
      t.text :description
      t.text :image_url
      t.timestamp :start_at
      t.timestamp :ends_at

      t.timestamps
    end
  end
end

class CreateEventSpaces < ActiveRecord::Migration[7.0]
  def change
    create_table :event_spaces do |t|
      t.string :name
      t.string :location
      t.float :price
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

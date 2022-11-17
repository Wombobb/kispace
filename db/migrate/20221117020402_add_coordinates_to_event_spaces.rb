class AddCoordinatesToEventSpaces < ActiveRecord::Migration[7.0]
  def change
    add_column :event_spaces, :latitude, :float
    add_column :event_spaces, :longitude, :float
  end
end

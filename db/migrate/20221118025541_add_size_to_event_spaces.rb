class AddSizeToEventSpaces < ActiveRecord::Migration[7.0]
  def change
    add_column :event_spaces, :size, :float
    add_column :event_spaces, :capacity, :integer
  end
end

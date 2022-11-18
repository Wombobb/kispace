class AddAddressToEventSpaces < ActiveRecord::Migration[7.0]
  def change
    add_column :event_spaces, :address, :string
  end
end

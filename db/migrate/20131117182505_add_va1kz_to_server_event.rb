class AddVa1kzToServerEvent < ActiveRecord::Migration
  def change
    add_column :server_events, :va1kz, :string
  end
end

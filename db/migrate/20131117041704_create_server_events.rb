class CreateServerEvents < ActiveRecord::Migration
  def change
    create_table :server_events do |t|
      t.string :name
      t.string :vakz

      t.timestamps
    end
  end
end

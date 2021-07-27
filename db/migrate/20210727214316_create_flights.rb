class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.integer :start_airport_id
      t.integer :stop_airport_id
      t.datetime :start_datetime
      t.integer :flight_duration_in_seconds

      t.timestamps
    end
  end
end

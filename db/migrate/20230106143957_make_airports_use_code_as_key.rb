class MakeAirportsUseCodeAsKey < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :flights, :airports, column: "departure_airport_id"
    rename_column :flights, :departure_airport_id, :departure_airport_code
    change_column :flights, :departure_airport_code, :string

    remove_foreign_key :flights, :airports, column: "destination_airport_id"
    rename_column :flights, :destination_airport_id, :destination_airport_code
    change_column :flights, :destination_airport_code, :string

    remove_column :airports, :id
    execute "ALTER TABLE airports ADD PRIMARY KEY (code);"
    add_index(:airports, :code, unique: true)

    add_foreign_key :flights, :airports, column: :departure_airport_code, primary_key: "code"
    add_foreign_key :flights, :airports, column: :destination_airport_code, primary_key: "code"
  end
end

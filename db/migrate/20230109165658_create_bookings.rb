class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :flight, null: false, foreign_key: true
      t.integer :number_of_passengers, limit: 1

      t.timestamps
    end
  end
end

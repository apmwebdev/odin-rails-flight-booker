class CreateAirports < ActiveRecord::Migration[7.0]
  def change
    create_table :airports do |t|
      t.string :city
      t.string :state
      t.string :code

      t.timestamps
    end
  end
end

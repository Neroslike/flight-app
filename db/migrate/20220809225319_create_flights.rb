class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.datetime :start
      t.string :duration

      t.timestamps
    end

    add_reference :flights, :departure
    add_reference :flights, :arrival
  end
end

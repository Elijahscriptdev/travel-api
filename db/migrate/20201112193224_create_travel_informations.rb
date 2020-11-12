class CreateTravelInformations < ActiveRecord::Migration[6.0]
  def change
    create_table :travel_informations do |t|
      t.string :routes
      t.string :bus_type
      t.integer :price
      t.boolean :availability
      t.references :transport_company, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

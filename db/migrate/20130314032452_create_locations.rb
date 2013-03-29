class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :club_id
      t.string :name
      t.text :description
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :state_province
      t.string :postal_code
      t.integer :country_id
      t.string :latitude
      t.string :longitude
      t.string :atn1
      t.string :atv1
      t.string :atn2
      t.string :atv2
      t.string :resource_type
      t.integer :resource_id
      t.boolean :active

      t.timestamps
    end
  end
end

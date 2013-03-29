class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.text :bio
      t.string :email
      t.string :cell_number
      t.string :home_number
      t.date :birthday
      t.string :occupation
      t.string :gender
      t.string :hobbies
      t.integer :contact_id
      t.string :email
      t.integer :location_id
      t.date :started_brewing
      t.string :favorite_styles
      t.string :on_tap
      t.string :primary
      t.string :future_brews

      t.timestamps
    end
  end
end

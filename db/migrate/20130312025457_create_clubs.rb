class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.text :description
      t.string :area
      t.string :state
      t.date :founded
      t.boolean :aha_registered
      t.time :meeting_time
      t.string :meeting_date
      t.string :meeting_address
      t.string :meeting_zip
      t.string :meeting_city
      t.string :meeting_state
      t.string :alternate_meeting_address
      t.string :alternate_meeting_zip
      t.string :alternate_meeting_state
      t.string :alternate_meeting_city
      t.datetime :alternate_meeting_datetime
      t.boolean :active
      t.string :dues

      t.timestamps
    end
  end
end

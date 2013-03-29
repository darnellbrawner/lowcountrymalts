class CreateClubsMembers < ActiveRecord::Migration
  def change
    create_table :clubs_members do |t|
      t.integer :club_id
      t.integer :member_id

      t.timestamps
    end
  end
end

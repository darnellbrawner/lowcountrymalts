class Club < ActiveRecord::Base
  has_many :club_members
  has_many :members, :through => :clubs_members
end

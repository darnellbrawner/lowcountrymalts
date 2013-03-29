class Member < ActiveRecord::Base
  has_many :clubs_members
  has_many :clubs, :through => :clubs_members
  belongs_to :location
end

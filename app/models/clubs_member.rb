class ClubsMember < ActiveRecord::Base
  belongs_to :club
  belongs_to :member
end

json.array!(@clubs_members) do |clubs_member|
  json.extract! clubs_member, :club_id, :member_id
  json.url clubs_member_url(clubs_member, format: :json)
end
json.array!(@clubs) do |club|
  json.extract! club, :name, :description, :area, :state, :founded, :aha_registered, :meeting_time, :meeting_date, :meeting_address, :meeting_city,:meeting_zip, :meeting_state, :alternate_meeting_address, :alternate_meeting_city, :alternate_meeting_zip, :alternate_meeting_state, :alternate_meeting_datetime, :active, :dues
  json.url club_url(club, format: :json)
end
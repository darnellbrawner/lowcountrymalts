json.array!(@members) do |member|
  json.extract! member, :first_name, :last_name, :middle_name, :bio, :email, :cell_number, :home_number, :birthday, :occupation, :gender, :hobbies, :contact_id, :email, :location_id, :started_brewing, :favorite_styles, :on_tap, :primary, :future_brews
  json.url member_url(member, format: :json)
end
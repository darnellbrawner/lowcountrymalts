json.array!(@locations) do |location|
  json.extract! location, :club_id, :name, :description, :address_line1, :address_line2, :city, :state_province, :postal_code, :country_id, :latitude, :longitude, :atn1, :atv1, :atn2, :atv2, :resource_type, :resource_id, :active
  json.url location_url(location, format: :json)
end
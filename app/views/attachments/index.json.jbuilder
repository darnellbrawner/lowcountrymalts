json.array!(@attachments) do |attachment|
  json.extract! attachment, :description, :file_name, :file_size, :content_type, :active, :resource_type, :resource_id
  json.url attachment_url(attachment, format: :json)
end
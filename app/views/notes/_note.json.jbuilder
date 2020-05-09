json.extract! note, :id, :note_location, :note_str, :created_at, :updated_at
json.url note_url(note, format: :json)

json.extract! appointment, :id, :name, :month, :day, :service, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)

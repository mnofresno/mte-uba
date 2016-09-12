json.extract! direccion, :id, :calle, :altura, :direccionable_id, :direccionable_type, :created_at, :updated_at
json.url direccion_url(direccion, format: :json)
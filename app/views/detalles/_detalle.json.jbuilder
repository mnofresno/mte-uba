json.extract! detalle, :id, :cantidad, :created_at, :updated_at
json.url detalle_url(detalle, format: :json)
json.extract! nota_pedido, :id, :numeroserie, :fecha, :created_at, :updated_at
json.url nota_pedido_url(nota_pedido, format: :json)
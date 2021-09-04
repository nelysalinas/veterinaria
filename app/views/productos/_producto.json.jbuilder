json.extract! producto, :id, :nombre_producto, :detalle_producto, :created_at, :updated_at
json.url producto_url(producto, format: :json)

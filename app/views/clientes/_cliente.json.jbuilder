json.extract! cliente, :id, :cedula_cliente, :nombre_cliente, :apellido_cliente, :direccion_cliente, :telefono_cliente, :email_cliente, :nombre_referencia_cliente, :telefono_referencia_cliente, :ruc_cliente, :tipo_cliente_id, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)

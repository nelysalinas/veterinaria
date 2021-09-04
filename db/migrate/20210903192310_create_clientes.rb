class CreateClientes < ActiveRecord::Migration[6.1]
  def change
    create_table :clientes do |t|
      t.integer :cedula_cliente
      t.string :nombre_cliente
      t.string :apellido_cliente
      t.string :direccion_cliente
      t.string :telefono_cliente
      t.string :email_cliente
      t.string :nombre_referencia_cliente
      t.string :telefono_referencia_cliente
      t.string :ruc_cliente
      t.references :tipo_cliente, null: false, foreign_key: true

      t.timestamps
    end
  end
end

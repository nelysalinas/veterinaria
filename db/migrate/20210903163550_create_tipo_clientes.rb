class CreateTipoClientes < ActiveRecord::Migration[6.1]
  def change
    create_table :tipo_clientes do |t|
      t.string :desc_tipo_cliente

      t.timestamps
    end
  end
end

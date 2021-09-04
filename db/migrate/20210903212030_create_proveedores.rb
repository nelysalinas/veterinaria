class CreateProveedores < ActiveRecord::Migration[6.1]
  def change
    create_table :proveedores do |t|
      t.string :ruc_proveedor
      t.string :nombre_proveedor
      t.string :telefono_proveedor
      t.string :email_proveedor
      t.string :nombre_contacto_proveedor
      t.string :telefono_contacto_proveedor

      t.timestamps
    end
  end
end

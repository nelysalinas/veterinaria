class CreateStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :stocks do |t|
      t.string :lote_producto
      t.integer :cantidad_producto
      t.integer :unidad_medida_producto
      t.date :fecha_vto_producto
      t.references :proveedor, null: false, foreign_key: true
      t.references :producto, null: false, foreign_key: true

      t.timestamps
    end
  end
end

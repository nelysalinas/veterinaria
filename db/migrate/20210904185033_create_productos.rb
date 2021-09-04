class CreateProductos < ActiveRecord::Migration[6.1]
  def change
    create_table :productos do |t|
      t.string :nombre_producto
      t.string :detalle_producto

      t.timestamps
    end
  end
end

# == Schema Information
#
# Table name: stocks
#
#  id                     :bigint           not null, primary key
#  lote_producto          :string
#  cantidad_producto      :integer
#  unidad_medida_producto :integer
#  fecha_vto_producto     :date
#  proveedor_id           :bigint           not null
#  producto_id            :bigint           not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
class Stock < ApplicationRecord
  belongs_to :proveedor
  belongs_to :producto

  enum unidad_medida_producto: { unidad: 0, caja: 1, paquete: 2 }

  validates :lote_producto, presence: { message: "Debes ingresar un lote para el producto" }
  validates :cantidad_producto, presence: { message: "Debes ingresar una cantidad para el producto" }
  validates :producto_id, presence: { message: "Debes seleccionar un producto" }
  validates :proveedor_id, presence: { message: "Debes seleccionar un proveedor" }
end

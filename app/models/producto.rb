# == Schema Information
#
# Table name: productos
#
#  id               :bigint           not null, primary key
#  nombre_producto  :string
#  detalle_producto :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Producto < ApplicationRecord
    validates :nombre_producto, presence: { message: 'Debes ingresar un nombre para el producto' }
    validates :nombre_producto, uniqueness: { message: 'El nombre del producto ya existe en el sistema, verifique' }
    validates :nombre_producto, length: { minimum: 2, maximum: 120, message: 'El numero de caracteres debe ir de 2 hasta 120 digitos, verifique' }
end

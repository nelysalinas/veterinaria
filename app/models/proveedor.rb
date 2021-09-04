# == Schema Information
#
# Table name: proveedores
#
#  id                          :bigint           not null, primary key
#  ruc_proveedor               :string
#  nombre_proveedor            :string
#  telefono_proveedor          :string
#  email_proveedor             :string
#  nombre_contacto_proveedor   :string
#  telefono_contacto_proveedor :string
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#
class Proveedor < ApplicationRecord

    validates :ruc_proveedor, presence: { message: 'Debes ingresar un numero de RUC para el Proveedor' }
    validates :ruc_proveedor, uniqueness: { message: 'Numero de RUC ya existe en el sistema, verifique' }
    validates :ruc_proveedor, length: { minimum: 6, maximum: 9, message: 'El numero de caracteres debe ir de 6 hasta 9 digitos, verifique' }

    validates :nombre_proveedor, presence: { message: 'Debes ingresar un nombre para el proveedor' }
    validates :nombre_proveedor, length: { minimum: 2, message: 'El numero de caracteres debe ser mayor a 1 digito, verifique' }

    validates :telefono_proveedor, presence: { message: 'Debes ingresar un telefono para el cliente' }
    validates :telefono_proveedor, length: { minimum: 9, maximum: 15, message: 'El numero de caracteres debe ser mayor a 1 digito, verifique' }
end

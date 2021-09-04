# == Schema Information
#
# Table name: clientes
#
#  id                          :bigint           not null, primary key
#  cedula_cliente              :integer
#  nombre_cliente              :string
#  apellido_cliente            :string
#  direccion_cliente           :string
#  telefono_cliente            :string
#  email_cliente               :string
#  nombre_referencia_cliente   :string
#  telefono_referencia_cliente :string
#  ruc_cliente                 :string
#  tipo_cliente_id             :bigint           not null
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#
class Cliente < ApplicationRecord
  belongs_to :tipo_cliente

  validates :cedula_cliente, presence: { message: 'Debes ingresar un numero de cedula para el cliente' }
  validates :cedula_cliente, uniqueness: { message: 'Numero de Cedula ya existe en el sistema, verifique' }
  validates :cedula_cliente, length: { minimum: 6, maximum: 8, message: 'El numero de caracteres debe ir de 3 hasta 8 digitos, verifique' }

  validates :nombre_cliente, presence: { message: 'Debes ingresar un nombre para el cliente' }
  validates :nombre_cliente, length: { minimum: 2, message: 'El numero de caracteres debe ser mayor a 1 digito, verifique' }

  validates :apellido_cliente, presence: { message: 'Debes ingresar un apellido para el cliente' }
  validates :apellido_cliente, length: { minimum: 2, message: 'El numero de caracteres debe ser mayor a 1 digito, verifique' }

  validates :direccion_cliente, presence: { message: 'Debes ingresar una direccion para el cliente' }
  validates :direccion_cliente, length: { minimum: 2, message: 'El numero de caracteres debe ser mayor a 1 digito, verifique' }

  validates :telefono_cliente, presence: { message: 'Debes ingresar una direccion para el cliente' }
  validates :telefono_cliente, length: { minimum: 9, maximum: 15, message: 'El numero de caracteres debe ser mayor a 1 digito, verifique' }


end

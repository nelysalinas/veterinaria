# == Schema Information
#
# Table name: tipo_clientes
#
#  id                :bigint           not null, primary key
#  desc_tipo_cliente :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class TipoCliente < ApplicationRecord
    validates :desc_tipo_cliente, presence: { message: "Ingrese un tipo de cliente válido" }
    validates :desc_tipo_cliente, uniqueness: { message: "No puedes duplicar un tipo de cliente"}
    validates :desc_tipo_cliente, length: {minimum:3, maximum:50, message: "La cantidad de caracteres debe estar entre 3 y 50" }
end
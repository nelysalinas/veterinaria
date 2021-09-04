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
require "test_helper"

class ClienteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

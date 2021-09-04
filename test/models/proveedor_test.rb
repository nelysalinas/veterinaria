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
require "test_helper"

class ProveedorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

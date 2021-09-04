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
require "test_helper"

class StockTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

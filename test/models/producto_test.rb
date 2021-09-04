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
require "test_helper"

class ProductoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

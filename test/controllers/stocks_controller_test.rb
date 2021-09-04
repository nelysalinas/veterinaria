require "test_helper"

class StocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stock = stocks(:one)
  end

  test "should get index" do
    get stocks_url
    assert_response :success
  end

  test "should get new" do
    get new_stock_url
    assert_response :success
  end

  test "should create stock" do
    assert_difference('Stock.count') do
      post stocks_url, params: { stock: { cantidad_producto: @stock.cantidad_producto, fecha_vto_producto: @stock.fecha_vto_producto, lote_producto: @stock.lote_producto, producto_id: @stock.producto_id, proveedor_id: @stock.proveedor_id, unidad_medida_producto: @stock.unidad_medida_producto } }
    end

    assert_redirected_to stock_url(Stock.last)
  end

  test "should show stock" do
    get stock_url(@stock)
    assert_response :success
  end

  test "should get edit" do
    get edit_stock_url(@stock)
    assert_response :success
  end

  test "should update stock" do
    patch stock_url(@stock), params: { stock: { cantidad_producto: @stock.cantidad_producto, fecha_vto_producto: @stock.fecha_vto_producto, lote_producto: @stock.lote_producto, producto_id: @stock.producto_id, proveedor_id: @stock.proveedor_id, unidad_medida_producto: @stock.unidad_medida_producto } }
    assert_redirected_to stock_url(@stock)
  end

  test "should destroy stock" do
    assert_difference('Stock.count', -1) do
      delete stock_url(@stock)
    end

    assert_redirected_to stocks_url
  end
end

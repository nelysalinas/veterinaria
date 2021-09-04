require "application_system_test_case"

class StocksTest < ApplicationSystemTestCase
  setup do
    @stock = stocks(:one)
  end

  test "visiting the index" do
    visit stocks_url
    assert_selector "h1", text: "Stocks"
  end

  test "creating a Stock" do
    visit stocks_url
    click_on "New Stock"

    fill_in "Cantidad producto", with: @stock.cantidad_producto
    fill_in "Fecha vto producto", with: @stock.fecha_vto_producto
    fill_in "Lote producto", with: @stock.lote_producto
    fill_in "Producto", with: @stock.producto_id
    fill_in "Proveedor", with: @stock.proveedor_id
    fill_in "Unidad medida producto", with: @stock.unidad_medida_producto
    click_on "Create Stock"

    assert_text "Stock was successfully created"
    click_on "Back"
  end

  test "updating a Stock" do
    visit stocks_url
    click_on "Edit", match: :first

    fill_in "Cantidad producto", with: @stock.cantidad_producto
    fill_in "Fecha vto producto", with: @stock.fecha_vto_producto
    fill_in "Lote producto", with: @stock.lote_producto
    fill_in "Producto", with: @stock.producto_id
    fill_in "Proveedor", with: @stock.proveedor_id
    fill_in "Unidad medida producto", with: @stock.unidad_medida_producto
    click_on "Update Stock"

    assert_text "Stock was successfully updated"
    click_on "Back"
  end

  test "destroying a Stock" do
    visit stocks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stock was successfully destroyed"
  end
end

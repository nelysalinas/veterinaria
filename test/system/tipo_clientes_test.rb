require "application_system_test_case"

class TipoClientesTest < ApplicationSystemTestCase
  setup do
    @tipo_cliente = tipo_clientes(:one)
  end

  test "visiting the index" do
    visit tipo_clientes_url
    assert_selector "h1", text: "Tipo Clientes"
  end

  test "creating a Tipo cliente" do
    visit tipo_clientes_url
    click_on "New Tipo Cliente"

    fill_in "Desc tipo cliente", with: @tipo_cliente.desc_tipo_cliente
    click_on "Create Tipo cliente"

    assert_text "Tipo cliente was successfully created"
    click_on "Back"
  end

  test "updating a Tipo cliente" do
    visit tipo_clientes_url
    click_on "Edit", match: :first

    fill_in "Desc tipo cliente", with: @tipo_cliente.desc_tipo_cliente
    click_on "Update Tipo cliente"

    assert_text "Tipo cliente was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo cliente" do
    visit tipo_clientes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo cliente was successfully destroyed"
  end
end

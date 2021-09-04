require "application_system_test_case"

class ClientesTest < ApplicationSystemTestCase
  setup do
    @cliente = clientes(:one)
  end

  test "visiting the index" do
    visit clientes_url
    assert_selector "h1", text: "Clientes"
  end

  test "creating a Cliente" do
    visit clientes_url
    click_on "New Cliente"

    fill_in "Apellido cliente", with: @cliente.apellido_cliente
    fill_in "Cedula cliente", with: @cliente.cedula_cliente
    fill_in "Direccion cliente", with: @cliente.direccion_cliente
    fill_in "Email cliente", with: @cliente.email_cliente
    fill_in "Nombre cliente", with: @cliente.nombre_cliente
    fill_in "Nombre referencia cliente", with: @cliente.nombre_referencia_cliente
    fill_in "Ruc cliente", with: @cliente.ruc_cliente
    fill_in "Telefono cliente", with: @cliente.telefono_cliente
    fill_in "Telefono referencia cliente", with: @cliente.telefono_referencia_cliente
    fill_in "Tipo cliente", with: @cliente.tipo_cliente_id
    click_on "Create Cliente"

    assert_text "Cliente was successfully created"
    click_on "Back"
  end

  test "updating a Cliente" do
    visit clientes_url
    click_on "Edit", match: :first

    fill_in "Apellido cliente", with: @cliente.apellido_cliente
    fill_in "Cedula cliente", with: @cliente.cedula_cliente
    fill_in "Direccion cliente", with: @cliente.direccion_cliente
    fill_in "Email cliente", with: @cliente.email_cliente
    fill_in "Nombre cliente", with: @cliente.nombre_cliente
    fill_in "Nombre referencia cliente", with: @cliente.nombre_referencia_cliente
    fill_in "Ruc cliente", with: @cliente.ruc_cliente
    fill_in "Telefono cliente", with: @cliente.telefono_cliente
    fill_in "Telefono referencia cliente", with: @cliente.telefono_referencia_cliente
    fill_in "Tipo cliente", with: @cliente.tipo_cliente_id
    click_on "Update Cliente"

    assert_text "Cliente was successfully updated"
    click_on "Back"
  end

  test "destroying a Cliente" do
    visit clientes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cliente was successfully destroyed"
  end
end

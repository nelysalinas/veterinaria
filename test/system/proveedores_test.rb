require "application_system_test_case"

class ProveedoresTest < ApplicationSystemTestCase
  setup do
    @proveedor = proveedores(:one)
  end

  test "visiting the index" do
    visit proveedores_url
    assert_selector "h1", text: "Proveedores"
  end

  test "creating a Proveedor" do
    visit proveedores_url
    click_on "New Proveedor"

    fill_in "Email proveedor", with: @proveedor.email_proveedor
    fill_in "Nombre contacto proveedor", with: @proveedor.nombre_contacto_proveedor
    fill_in "Nombre proveedor", with: @proveedor.nombre_proveedor
    fill_in "Ruc proveedor", with: @proveedor.ruc_proveedor
    fill_in "Telefono contacto proveedor", with: @proveedor.telefono_contacto_proveedor
    fill_in "Telefono proveedor", with: @proveedor.telefono_proveedor
    click_on "Create Proveedor"

    assert_text "Proveedor was successfully created"
    click_on "Back"
  end

  test "updating a Proveedor" do
    visit proveedores_url
    click_on "Edit", match: :first

    fill_in "Email proveedor", with: @proveedor.email_proveedor
    fill_in "Nombre contacto proveedor", with: @proveedor.nombre_contacto_proveedor
    fill_in "Nombre proveedor", with: @proveedor.nombre_proveedor
    fill_in "Ruc proveedor", with: @proveedor.ruc_proveedor
    fill_in "Telefono contacto proveedor", with: @proveedor.telefono_contacto_proveedor
    fill_in "Telefono proveedor", with: @proveedor.telefono_proveedor
    click_on "Update Proveedor"

    assert_text "Proveedor was successfully updated"
    click_on "Back"
  end

  test "destroying a Proveedor" do
    visit proveedores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Proveedor was successfully destroyed"
  end
end

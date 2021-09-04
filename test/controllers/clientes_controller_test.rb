require "test_helper"

class ClientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cliente = clientes(:one)
  end

  test "should get index" do
    get clientes_url
    assert_response :success
  end

  test "should get new" do
    get new_cliente_url
    assert_response :success
  end

  test "should create cliente" do
    assert_difference('Cliente.count') do
      post clientes_url, params: { cliente: { apellido_cliente: @cliente.apellido_cliente, cedula_cliente: @cliente.cedula_cliente, direccion_cliente: @cliente.direccion_cliente, email_cliente: @cliente.email_cliente, nombre_cliente: @cliente.nombre_cliente, nombre_referencia_cliente: @cliente.nombre_referencia_cliente, ruc_cliente: @cliente.ruc_cliente, telefono_cliente: @cliente.telefono_cliente, telefono_referencia_cliente: @cliente.telefono_referencia_cliente, tipo_cliente_id: @cliente.tipo_cliente_id } }
    end

    assert_redirected_to cliente_url(Cliente.last)
  end

  test "should show cliente" do
    get cliente_url(@cliente)
    assert_response :success
  end

  test "should get edit" do
    get edit_cliente_url(@cliente)
    assert_response :success
  end

  test "should update cliente" do
    patch cliente_url(@cliente), params: { cliente: { apellido_cliente: @cliente.apellido_cliente, cedula_cliente: @cliente.cedula_cliente, direccion_cliente: @cliente.direccion_cliente, email_cliente: @cliente.email_cliente, nombre_cliente: @cliente.nombre_cliente, nombre_referencia_cliente: @cliente.nombre_referencia_cliente, ruc_cliente: @cliente.ruc_cliente, telefono_cliente: @cliente.telefono_cliente, telefono_referencia_cliente: @cliente.telefono_referencia_cliente, tipo_cliente_id: @cliente.tipo_cliente_id } }
    assert_redirected_to cliente_url(@cliente)
  end

  test "should destroy cliente" do
    assert_difference('Cliente.count', -1) do
      delete cliente_url(@cliente)
    end

    assert_redirected_to clientes_url
  end
end

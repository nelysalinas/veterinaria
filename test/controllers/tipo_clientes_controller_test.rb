require "test_helper"

class TipoClientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_cliente = tipo_clientes(:one)
  end

  test "should get index" do
    get tipo_clientes_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_cliente_url
    assert_response :success
  end

  test "should create tipo_cliente" do
    assert_difference('TipoCliente.count') do
      post tipo_clientes_url, params: { tipo_cliente: { desc_tipo_cliente: @tipo_cliente.desc_tipo_cliente } }
    end

    assert_redirected_to tipo_cliente_url(TipoCliente.last)
  end

  test "should show tipo_cliente" do
    get tipo_cliente_url(@tipo_cliente)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_cliente_url(@tipo_cliente)
    assert_response :success
  end

  test "should update tipo_cliente" do
    patch tipo_cliente_url(@tipo_cliente), params: { tipo_cliente: { desc_tipo_cliente: @tipo_cliente.desc_tipo_cliente } }
    assert_redirected_to tipo_cliente_url(@tipo_cliente)
  end

  test "should destroy tipo_cliente" do
    assert_difference('TipoCliente.count', -1) do
      delete tipo_cliente_url(@tipo_cliente)
    end

    assert_redirected_to tipo_clientes_url
  end
end

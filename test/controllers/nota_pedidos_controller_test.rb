require 'test_helper'

class NotaPedidosControllerTest < ActionController::TestCase
  setup do
    @nota_pedido = nota_pedidos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nota_pedidos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nota_pedido" do
    assert_difference('NotaPedido.count') do
      post :create, nota_pedido: { fecha: @nota_pedido.fecha, numeroserie: @nota_pedido.numeroserie }
    end

    assert_redirected_to nota_pedido_path(assigns(:nota_pedido))
  end

  test "should show nota_pedido" do
    get :show, id: @nota_pedido
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nota_pedido
    assert_response :success
  end

  test "should update nota_pedido" do
    patch :update, id: @nota_pedido, nota_pedido: { fecha: @nota_pedido.fecha, numeroserie: @nota_pedido.numeroserie }
    assert_redirected_to nota_pedido_path(assigns(:nota_pedido))
  end

  test "should destroy nota_pedido" do
    assert_difference('NotaPedido.count', -1) do
      delete :destroy, id: @nota_pedido
    end

    assert_redirected_to nota_pedidos_path
  end
end

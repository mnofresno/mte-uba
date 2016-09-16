require 'test_helper'

class NotapedidosControllerTest < ActionController::TestCase
  setup do
    @notapedido = notapedidos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notapedidos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create notapedido" do
    assert_difference('Notapedido.count') do
      post :create, notapedido: {  }
    end

    assert_redirected_to notapedido_path(assigns(:notapedido))
  end

  test "should show notapedido" do
    get :show, id: @notapedido
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @notapedido
    assert_response :success
  end

  test "should update notapedido" do
    patch :update, id: @notapedido, notapedido: {  }
    assert_redirected_to notapedido_path(assigns(:notapedido))
  end

  test "should destroy notapedido" do
    assert_difference('Notapedido.count', -1) do
      delete :destroy, id: @notapedido
    end

    assert_redirected_to notapedidos_path
  end
end

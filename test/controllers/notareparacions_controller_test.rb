require 'test_helper'

class NotareparacionsControllerTest < ActionController::TestCase
  setup do
    @notareparacion = notareparacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notareparacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create notareparacion" do
    assert_difference('Notareparacion.count') do
      post :create, notareparacion: {  }
    end

    assert_redirected_to notareparacion_path(assigns(:notareparacion))
  end

  test "should show notareparacion" do
    get :show, id: @notareparacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @notareparacion
    assert_response :success
  end

  test "should update notareparacion" do
    patch :update, id: @notareparacion, notareparacion: {  }
    assert_redirected_to notareparacion_path(assigns(:notareparacion))
  end

  test "should destroy notareparacion" do
    assert_difference('Notareparacion.count', -1) do
      delete :destroy, id: @notareparacion
    end

    assert_redirected_to notareparacions_path
  end
end

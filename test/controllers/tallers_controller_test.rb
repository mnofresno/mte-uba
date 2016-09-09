require 'test_helper'

class TallersControllerTest < ActionController::TestCase
  setup do
    @taller = tallers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tallers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taller" do
    assert_difference('Taller.count') do
      post :create, taller: { nombre: @taller.nombre }
    end

    assert_redirected_to taller_path(assigns(:taller))
  end

  test "should show taller" do
    get :show, id: @taller
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taller
    assert_response :success
  end

  test "should update taller" do
    patch :update, id: @taller, taller: { nombre: @taller.nombre }
    assert_redirected_to taller_path(assigns(:taller))
  end

  test "should destroy taller" do
    assert_difference('Taller.count', -1) do
      delete :destroy, id: @taller
    end

    assert_redirected_to tallers_path
  end
end

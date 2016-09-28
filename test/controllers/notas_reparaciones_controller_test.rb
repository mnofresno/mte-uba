require 'test_helper'

class NotaReparacionsControllerTest < ActionController::TestCase
  setup do
    @nota_reparacion = notas_reparaciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notas_reparaciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nota_reparacion" do
    assert_difference('NotaReparacion.count') do
      post :create, nota_reparacion: { fecha: @nota_reparacion.fecha, numeroserie: @nota_reparacion.numeroserie }
    end

    assert_redirected_to nota_reparacion_path(assigns(:nota_reparacion))
  end

  test "should show nota_reparacion" do
    get :show, id: @nota_reparacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nota_reparacion
    assert_response :success
  end

  test "should update nota_reparacion" do
    patch :update, id: @nota_reparacion, nota_reparacion: { fecha: @nota_reparacion.fecha, numeroserie: @nota_reparacion.numeroserie }
    assert_redirected_to nota_reparacion_path(assigns(:nota_reparacion))
  end

  test "should destroy nota_reparacion" do
    assert_difference('NotaReparacion.count', -1) do
      delete :destroy, id: @nota_reparacion
    end

    assert_redirected_to notas_reparaciones_path
  end
end

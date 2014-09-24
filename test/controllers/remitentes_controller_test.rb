require 'test_helper'

class RemitentesControllerTest < ActionController::TestCase
  setup do
    @remitente = remitentes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:remitentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create remitente" do
    assert_difference('Remitente.count') do
      post :create, remitente: { dni: @remitente.dni, nombre_razon: @remitente.nombre_razon, ruc: @remitente.ruc }
    end

    assert_redirected_to remitente_path(assigns(:remitente))
  end

  test "should show remitente" do
    get :show, id: @remitente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @remitente
    assert_response :success
  end

  test "should update remitente" do
    patch :update, id: @remitente, remitente: { dni: @remitente.dni, nombre_razon: @remitente.nombre_razon, ruc: @remitente.ruc }
    assert_redirected_to remitente_path(assigns(:remitente))
  end

  test "should destroy remitente" do
    assert_difference('Remitente.count', -1) do
      delete :destroy, id: @remitente
    end

    assert_redirected_to remitentes_path
  end
end

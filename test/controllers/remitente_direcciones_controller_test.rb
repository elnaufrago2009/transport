require 'test_helper'

class RemitenteDireccionesControllerTest < ActionController::TestCase
  setup do
    @remitente_direccione = remitente_direcciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:remitente_direcciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create remitente_direccione" do
    assert_difference('RemitenteDireccione.count') do
      post :create, remitente_direccione: { direccion: @remitente_direccione.direccion, remitente_id: @remitente_direccione.remitente_id }
    end

    assert_redirected_to remitente_direccione_path(assigns(:remitente_direccione))
  end

  test "should show remitente_direccione" do
    get :show, id: @remitente_direccione
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @remitente_direccione
    assert_response :success
  end

  test "should update remitente_direccione" do
    patch :update, id: @remitente_direccione, remitente_direccione: { direccion: @remitente_direccione.direccion, remitente_id: @remitente_direccione.remitente_id }
    assert_redirected_to remitente_direccione_path(assigns(:remitente_direccione))
  end

  test "should destroy remitente_direccione" do
    assert_difference('RemitenteDireccione.count', -1) do
      delete :destroy, id: @remitente_direccione
    end

    assert_redirected_to remitente_direcciones_path
  end
end

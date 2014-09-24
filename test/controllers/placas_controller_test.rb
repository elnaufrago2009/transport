require 'test_helper'

class PlacasControllerTest < ActionController::TestCase
  setup do
    @placa = placas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:placas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create placa" do
    assert_difference('Placa.count') do
      post :create, placa: { nombre: @placa.nombre }
    end

    assert_redirected_to placa_path(assigns(:placa))
  end

  test "should show placa" do
    get :show, id: @placa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @placa
    assert_response :success
  end

  test "should update placa" do
    patch :update, id: @placa, placa: { nombre: @placa.nombre }
    assert_redirected_to placa_path(assigns(:placa))
  end

  test "should destroy placa" do
    assert_difference('Placa.count', -1) do
      delete :destroy, id: @placa
    end

    assert_redirected_to placas_path
  end
end

require 'test_helper'

class NumeroFacturasControllerTest < ActionController::TestCase
  setup do
    @numero_factura = numero_facturas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:numero_facturas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create numero_factura" do
    assert_difference('NumeroFactura.count') do
      post :create, numero_factura: { numero: @numero_factura.numero }
    end

    assert_redirected_to numero_factura_path(assigns(:numero_factura))
  end

  test "should show numero_factura" do
    get :show, id: @numero_factura
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @numero_factura
    assert_response :success
  end

  test "should update numero_factura" do
    patch :update, id: @numero_factura, numero_factura: { numero: @numero_factura.numero }
    assert_redirected_to numero_factura_path(assigns(:numero_factura))
  end

  test "should destroy numero_factura" do
    assert_difference('NumeroFactura.count', -1) do
      delete :destroy, id: @numero_factura
    end

    assert_redirected_to numero_facturas_path
  end
end

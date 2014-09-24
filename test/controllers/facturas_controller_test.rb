require 'test_helper'

class FacturasControllerTest < ActionController::TestCase
  setup do
    @factura = facturas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:facturas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create factura" do
    assert_difference('Factura.count') do
      post :create, factura: { condiciones_pago: @factura.condiciones_pago, igv: @factura.igv, numero_factura_id: @factura.numero_factura_id, placa_id: @factura.placa_id, precio_venta: @factura.precio_venta, remitente_direccione_id: @factura.remitente_direccione_id, valor_venta: @factura.valor_venta }
    end

    assert_redirected_to factura_path(assigns(:factura))
  end

  test "should show factura" do
    get :show, id: @factura
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @factura
    assert_response :success
  end

  test "should update factura" do
    patch :update, id: @factura, factura: { condiciones_pago: @factura.condiciones_pago, igv: @factura.igv, numero_factura_id: @factura.numero_factura_id, placa_id: @factura.placa_id, precio_venta: @factura.precio_venta, remitente_direccione_id: @factura.remitente_direccione_id, valor_venta: @factura.valor_venta }
    assert_redirected_to factura_path(assigns(:factura))
  end

  test "should destroy factura" do
    assert_difference('Factura.count', -1) do
      delete :destroy, id: @factura
    end

    assert_redirected_to facturas_path
  end
end

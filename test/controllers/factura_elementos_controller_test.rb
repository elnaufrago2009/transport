require 'test_helper'

class FacturaElementosControllerTest < ActionController::TestCase
  setup do
    @factura_elemento = factura_elementos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:factura_elementos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create factura_elemento" do
    assert_difference('FacturaElemento.count') do
      post :create, factura_elemento: { factura_id: @factura_elemento.factura_id, precio: @factura_elemento.precio, primera_guia_id: @factura_elemento.primera_guia_id, segunda_guia_id: @factura_elemento.segunda_guia_id }
    end

    assert_redirected_to factura_elemento_path(assigns(:factura_elemento))
  end

  test "should show factura_elemento" do
    get :show, id: @factura_elemento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @factura_elemento
    assert_response :success
  end

  test "should update factura_elemento" do
    patch :update, id: @factura_elemento, factura_elemento: { factura_id: @factura_elemento.factura_id, precio: @factura_elemento.precio, primera_guia_id: @factura_elemento.primera_guia_id, segunda_guia_id: @factura_elemento.segunda_guia_id }
    assert_redirected_to factura_elemento_path(assigns(:factura_elemento))
  end

  test "should destroy factura_elemento" do
    assert_difference('FacturaElemento.count', -1) do
      delete :destroy, id: @factura_elemento
    end

    assert_redirected_to factura_elementos_path
  end
end

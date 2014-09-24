require 'test_helper'

class GuiaElementosControllerTest < ActionController::TestCase
  setup do
    @guia_elemento = guia_elementos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:guia_elementos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create guia_elemento" do
    assert_difference('GuiaElemento.count') do
      post :create, guia_elemento: { guia_id: @guia_elemento.guia_id, numero_guia_remitente: @guia_elemento.numero_guia_remitente }
    end

    assert_redirected_to guia_elemento_path(assigns(:guia_elemento))
  end

  test "should show guia_elemento" do
    get :show, id: @guia_elemento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @guia_elemento
    assert_response :success
  end

  test "should update guia_elemento" do
    patch :update, id: @guia_elemento, guia_elemento: { guia_id: @guia_elemento.guia_id, numero_guia_remitente: @guia_elemento.numero_guia_remitente }
    assert_redirected_to guia_elemento_path(assigns(:guia_elemento))
  end

  test "should destroy guia_elemento" do
    assert_difference('GuiaElemento.count', -1) do
      delete :destroy, id: @guia_elemento
    end

    assert_redirected_to guia_elementos_path
  end
end

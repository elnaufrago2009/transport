require 'test_helper'

class NumeroGuiasControllerTest < ActionController::TestCase
  setup do
    @numero_guia = numero_guias(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:numero_guias)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create numero_guia" do
    assert_difference('NumeroGuia.count') do
      post :create, numero_guia: { numero: @numero_guia.numero }
    end

    assert_redirected_to numero_guia_path(assigns(:numero_guia))
  end

  test "should show numero_guia" do
    get :show, id: @numero_guia
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @numero_guia
    assert_response :success
  end

  test "should update numero_guia" do
    patch :update, id: @numero_guia, numero_guia: { numero: @numero_guia.numero }
    assert_redirected_to numero_guia_path(assigns(:numero_guia))
  end

  test "should destroy numero_guia" do
    assert_difference('NumeroGuia.count', -1) do
      delete :destroy, id: @numero_guia
    end

    assert_redirected_to numero_guias_path
  end
end

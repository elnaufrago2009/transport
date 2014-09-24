require 'test_helper'

class GuiasControllerTest < ActionController::TestCase
  setup do
    @guia = guias(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:guias)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create guia" do
    assert_difference('Guia.count') do
      post :create, guia: { configuracion_vehicular: @guia.configuracion_vehicular, destinatario_id: @guia.destinatario_id, fecha_emision: @guia.fecha_emision, fecha_traslado: @guia.fecha_traslado, licencia_conducir: @guia.licencia_conducir, llegada_direccion: @guia.llegada_direccion, llegada_distrito_id: @guia.llegada_distrito_id, marca_vehiculo: @guia.marca_vehiculo, numero_certificado_inscripcion: @guia.numero_certificado_inscripcion, numero_guia_id: @guia.numero_guia_id, partida_direccion: @guia.partida_direccion, partida_distrito_id: @guia.partida_distrito_id, placa_id: @guia.placa_id, remitente_id: @guia.remitente_id }
    end

    assert_redirected_to guia_path(assigns(:guia))
  end

  test "should show guia" do
    get :show, id: @guia
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @guia
    assert_response :success
  end

  test "should update guia" do
    patch :update, id: @guia, guia: { configuracion_vehicular: @guia.configuracion_vehicular, destinatario_id: @guia.destinatario_id, fecha_emision: @guia.fecha_emision, fecha_traslado: @guia.fecha_traslado, licencia_conducir: @guia.licencia_conducir, llegada_direccion: @guia.llegada_direccion, llegada_distrito_id: @guia.llegada_distrito_id, marca_vehiculo: @guia.marca_vehiculo, numero_certificado_inscripcion: @guia.numero_certificado_inscripcion, numero_guia_id: @guia.numero_guia_id, partida_direccion: @guia.partida_direccion, partida_distrito_id: @guia.partida_distrito_id, placa_id: @guia.placa_id, remitente_id: @guia.remitente_id }
    assert_redirected_to guia_path(assigns(:guia))
  end

  test "should destroy guia" do
    assert_difference('Guia.count', -1) do
      delete :destroy, id: @guia
    end

    assert_redirected_to guias_path
  end
end

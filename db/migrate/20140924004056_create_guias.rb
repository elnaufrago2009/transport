class CreateGuias < ActiveRecord::Migration
  def change
    create_table :guias do |t|
      t.integer :numero_guia_id
      t.date :fecha_emision
      t.date :fecha_traslado
      t.string :partida_direccion
      t.integer :partida_distrito_id
      t.string :llegada_direccion
      t.integer :llegada_distrito_id
      t.integer :remitente_id
      t.integer :destinatario_id
      t.string :marca_vehiculo
      t.integer :placa_id
      t.string :configuracion_vehicular
      t.string :numero_certificado_inscripcion
      t.string :licencia_conducir
      t.string :remitente_remision

      t.timestamps
    end
  end
end

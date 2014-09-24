class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.integer :numero_factura_id
      t.integer :remitente_direccione_id
      t.string :condiciones_pago
      t.string :valor_venta
      t.string :igv
      t.string :precio_venta
      t.integer :placa_id

      t.timestamps
    end
  end
end

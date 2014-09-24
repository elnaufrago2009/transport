class CreateFacturaElementos < ActiveRecord::Migration
  def change
    create_table :factura_elementos do |t|
      t.integer :primera_guia_id
      t.integer :segunda_guia_id
      t.integer :factura_id
      t.string :precio

      t.timestamps
    end
  end
end

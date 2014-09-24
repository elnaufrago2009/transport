class CreateNumeroFacturas < ActiveRecord::Migration
  def change
    create_table :numero_facturas do |t|
      t.string :numero

      t.timestamps
    end
  end
end

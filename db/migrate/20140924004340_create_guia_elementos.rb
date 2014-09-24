class CreateGuiaElementos < ActiveRecord::Migration
  def change
    create_table :guia_elementos do |t|
      t.string :numero_guia_remitente
      t.integer :guia_id

      t.timestamps
    end
  end
end

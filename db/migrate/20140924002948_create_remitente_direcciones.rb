class CreateRemitenteDirecciones < ActiveRecord::Migration
  def change
    create_table :remitente_direcciones do |t|
      t.string :direccion
      t.integer :remitente_id

      t.timestamps
    end
  end
end

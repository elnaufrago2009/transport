class CreateNumeroGuias < ActiveRecord::Migration
  def change
    create_table :numero_guias do |t|
      t.string :numero

      t.timestamps
    end
  end
end

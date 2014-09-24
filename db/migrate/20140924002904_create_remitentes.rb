class CreateRemitentes < ActiveRecord::Migration
  def change
    create_table :remitentes do |t|
      t.string :nombre_razon
      t.string :ruc
      t.string :dni

      t.timestamps
    end
  end
end

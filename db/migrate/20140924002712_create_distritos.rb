class CreateDistritos < ActiveRecord::Migration
  def change
    create_table :distritos do |t|
      t.string :nombre
      t.integer :provincia_id

      t.timestamps
    end
  end
end

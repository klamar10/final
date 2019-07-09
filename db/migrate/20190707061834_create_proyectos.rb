class CreateProyectos < ActiveRecord::Migration[5.1]
  def change
    create_table :proyectos do |t|
      t.string :nombre
      t.string :caracteristica
      t.text :areacomun
      t.integer :pisos
      t.text :ubicacion
      t.integer :precio

      t.timestamps
    end
  end
end

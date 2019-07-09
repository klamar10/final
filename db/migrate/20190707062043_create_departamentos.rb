class CreateDepartamentos < ActiveRecord::Migration[5.1]
  def change
    create_table :departamentos do |t|
      t.integer :piso
      t.text :numero
      t.string :estado
      t.text :area
      t.string :tipo
      t.integer :precio
      t.references :proyecto, foreign_key: true

      t.timestamps
    end
  end
end

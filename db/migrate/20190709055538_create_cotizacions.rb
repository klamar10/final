class CreateCotizacions < ActiveRecord::Migration[5.1]
  def change
    create_table :cotizacions do |t|
      t.text :comentarios
      t.references :departamento, foreign_key: true

      t.timestamps
    end
  end
end

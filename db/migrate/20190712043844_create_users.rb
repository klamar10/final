class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :apellido
      t.text :email
      t.text :password
      t.integer :celular
      t.integer :dni
      t.text :direccion
      t.string :perfil

      t.timestamps
    end
  end
end

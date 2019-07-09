class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.text :nombre
      t.string :email
      t.string :password
      t.integer :celular
      t.integer :dni
      t.text :direccion

      t.timestamps
    end
  end
end

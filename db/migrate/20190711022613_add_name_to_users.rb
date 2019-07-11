class AddNameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
	add_column :users, :apellido, :string
    add_column :users, :cumple, :datetime
    add_column :users, :is_female, :boolean, default: false
    add_column :users, :celular, :integer
    add_column :users, :dni, :integer
    add_column :users, :direccion, :text
  end
end

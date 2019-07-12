class User < ApplicationRecord
	validates :nombre, presence: true
	validates :nombre, presence: true
    validates :apellido, presence: true
    validates :email, presence: true
    validates :password, presence: true
    validates :celular, presence: true
    validates :dni, presence: true, uniqueness: true
    validates :direccion, presence: true

end

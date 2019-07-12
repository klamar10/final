class Proyecto < ApplicationRecord
	has_many :departamentos, dependent: :destroy

	validates :nombre, presence: true, uniqueness: true
	validates :caracteristica, presence: true
	validates :areacomun, presence: true
	validates :ubicacion, presence: true
	validates :precio, presence: true
	validates :foto_file_name, presence: false

	def to_s
		nombre
	end
end

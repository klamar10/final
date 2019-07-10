class Proyecto < ApplicationRecord
	has_many :departamentos, dependent: :destroy

	validates :nombre, presence: true, uniqueness: true
	validates :caracteristica, presence: true
	validates :areacomun, presence: true
	validates :ubicacion, presence: true
	validates :precio, presence: true

	has_attached_file :foto, styles: {medium: "1280x720", thumb: "800x600"}
	#validates_attachement_content_type :foto, content_type: /\Aimage\/.*\Z/

	def to_s
		nombre
	end
end

class Departamento < ApplicationRecord
  belongs_to :proyecto

  validates :piso, presence: true
  validates :numero, presence: true
  validates :estado, presence: true
  validates :area, presence: true
  validates :tipo, presence: true
  validates :precio, presence: true
  validates :proyecto, presence: true
  def to_s
		nombre
	end
end

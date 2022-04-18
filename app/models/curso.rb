class Curso < ApplicationRecord
  belongs_to :area
  has_many :curso_fichas
  has_many :fichas, through: :curso_fichas, dependent: :destroy
  accepts_nested_attributes_for :fichas 
end

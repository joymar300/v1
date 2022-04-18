class Ficha < ApplicationRecord
    has_many :curso_fichas
    has_many :cursos, through: :curso_fichas, dependent: :destroy

end

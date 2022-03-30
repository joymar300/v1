class Area < ApplicationRecord
    has_many :cursos, dependent: :destroy
end

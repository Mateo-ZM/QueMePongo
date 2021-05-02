class Prenda < ApplicationRecord
    enum categoria: [:Torso, :Piernas, :Pies, :Accesorio]
    has_one_attached :imagen
end

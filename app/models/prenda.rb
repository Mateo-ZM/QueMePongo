class Prenda < ApplicationRecord
    enum categoria: [:Torso, :Piernas, :Pies, :Accesorio]
end

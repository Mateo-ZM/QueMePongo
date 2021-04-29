class Prenda < ApplicationRecord
    enum categoria: [:torso, :piernas, :pies, :accesorio]
end
